part of 'bloc.dart';

/// {@template bloc_stream}
/// An interface for the core functionality implemented by
/// both [Bloc] and [Cubit].
/// {@endtemplate}
abstract class IBlocBase<State extends Object?> {
  /// The current [state].
  State get state;

  /// The state stream.
  Stream<State> get stream;

  /// Whether the bloc is closed.
  ///
  /// A bloc is considered closed once [close] is called.
  /// Subsequent state changes cannot occur within a closed bloc.
  bool get isClosed;

  /// Updates the [state] to the provided [state].
  /// [emit] does nothing if the instance has been closed.
  @protected
  @mustCallSuper
  @Deprecated(
    'Use EmitterMixin instead. Will be removed in v8.0.0',
  )
  void emit(State state);

  /// Called whenever a [change] occurs with the given [change].
  /// A [change] occurs when a new `state` is emitted.
  /// [onChange] is called before the `state` of the `cubit` is updated.
  /// [onChange] is a great spot to add logging/analytics for a specific `cubit`.
  ///
  /// **Note: `super.onChange` should always be called first.**
  /// ```dart
  /// @override
  /// void onChange(Change change) {
  ///   // Always call super.onChange with the current change
  ///   super.onChange(change);
  ///
  ///   // Custom onChange logic goes here
  /// }
  /// ```
  ///
  /// See also:
  ///
  /// * [BlocObserver] for observing [Cubit] behavior globally.
  @protected
  @mustCallSuper
  @visibleForOverriding
  void onChange(Change<State> change);

  /// Reports an [error] which triggers [onError] with an optional [StackTrace].
  /// If [close] has already been called, any subsequent calls to [addError]
  /// will be ignored and will not result in any subsequent state changes.
  @protected
  @mustCallSuper
  void addError(Object error, [StackTrace? stackTrace]);

  /// Called whenever an [error] occurs and notifies `IBlocObserver.onError`.
  ///
  /// In debug mode, [onError] throws a [BlocUnhandledErrorException] for
  /// improved visibility.
  ///
  /// In release mode, [onError] does not throw and will instead only report
  /// the error to `IBlocObserver.onError`.
  ///
  /// **Note: `super.onError` should always be called last.**
  /// ```dart
  /// @override
  /// void onError(Object error, StackTrace stackTrace) {
  ///   // Custom onError logic goes here
  ///
  ///   // Always call super.onError with the current error and stackTrace
  ///   super.onError(error, stackTrace);
  /// }
  /// ```
  @protected
  @mustCallSuper
  @visibleForOverriding
  void onError(Object error, StackTrace stackTrace);

  /// Closes the `event` and `state` `Streams`.
  /// This method should be called when a [Bloc] is no longer needed.
  /// Once [close] is called, `events` that are added will not be
  /// processed.
  /// In addition, if [close] is called while `events` are still being
  /// processed, the [Bloc] will finish processing the pending `events`.
  @mustCallSuper
  @visibleForOverriding
  Future<void> close();
}

/// {@macro bloc_stream}
abstract class BlocBase<State extends Object?> implements IBlocBase<State> {
  /// {@macro bloc_stream}
  BlocBase(this._state) {
    // ignore: invalid_use_of_protected_member
    Bloc.observer.onCreate(this);
  }

  StreamController<State>? __stateController;
  StreamController<State> get _stateController {
    return __stateController ??= StreamController<State>.broadcast();
  }

  State _state;

  bool _emitted = false;

  @override
  State get state => _state;

  @override
  Stream<State> get stream => _stateController.stream;

  @override
  bool get isClosed => _stateController.isClosed;

  /// Adds a subscription to the `Stream<State>`.
  /// Returns a [StreamSubscription] which handles events from
  /// the `Stream<State>` using the provided [onData], [onError] and [onDone]
  /// handlers.
  @Deprecated(
    'Use stream.listen instead. Will be removed in v8.0.0',
  )
  StreamSubscription<State> listen(
    void Function(State)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  @override
  @Deprecated(
    'Use EmitterMixin instead. Will be removed in v8.0.0',
  )
  void emit(State state) => _emit(state);

  @override
  void onChange(Change<State> change) {
    // ignore: invalid_use_of_protected_member
    Bloc.observer.onChange(this, change);
  }

  @mustCallSuper
  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    onError(error, stackTrace ?? StackTrace.current);
  }

  @protected
  @mustCallSuper
  @override
  void onError(Object error, StackTrace stackTrace) {
    // ignore: invalid_use_of_protected_member
    Bloc.observer.onError(this, error, stackTrace);
    assert(() {
      throw BlocUnhandledErrorException(this, error, stackTrace);
    }());
  }

  @mustCallSuper
  @override
  Future<void> close() async {
    // ignore: invalid_use_of_protected_member
    Bloc.observer.onClose(this);
    await _stateController.close();
  }

  void _emit(State state) {
    if (_stateController.isClosed) return;
    if (state == _state && _emitted) return;
    onChange(Change<State>(currentState: this.state, nextState: state));
    _state = state;
    _stateController.add(_state);
    _emitted = true;
  }
}
