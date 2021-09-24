import 'dart:async';

import 'package:meta/meta.dart';

part 'bloc_base.dart';
part 'bloc_observer.dart';
part 'bloc_unhandled_error_exception.dart';
part 'cubit.dart';
part 'emitter_mixin.dart';
part 'transition.dart';

/// Signature for a mapper function which takes an [Event] as input
/// and outputs a [Stream] of [Transition] objects.
typedef TransitionFunction<Event extends Object?, State extends Object?>
    = Stream<Transition<Event, State>> Function(Event);

/// {@template i_bloc}
/// An interface for [Bloc].
/// Takes a `Stream` of `Events` as input
/// and transforms them into a `Stream` of `States` as output.
/// {@endtemplate}
abstract class IBloc<Event extends Object?, State extends Object?>
    extends IBlocBase<State> implements StreamSink<Event> {
  /// Pass all [eventStream] events to the [Bloc]
  /// If [close] has already been called, any subsequent calls to [addStream]
  /// will be ignored and will not result in any subsequent state changes.
  @override
  Future<void> addStream(Stream<Event> eventStream);

  /// Notifies the [Bloc] of a new [event]
  /// If [close] has already been called, any subsequent calls to [add] will
  /// be ignored and will not result in any subsequent state changes.
  @override
  void add(Event event);

  /// Called whenever an [event] is [add]ed to the [Bloc].
  /// A great spot to add logging/analytics at the individual [Bloc] level.
  ///
  /// **Note: `super.onEvent` should always be called first.**
  /// ```dart
  /// @override
  /// void onEvent(Event event) {
  ///   // Always call super.onEvent with the current event
  ///   super.onEvent(event);
  ///
  ///   // Custom onEvent logic goes here
  /// }
  /// ```
  ///
  /// See also:
  ///
  /// * `IBlocObserver.onEvent` for observing events globally.
  ///
  @protected
  @mustCallSuper
  @visibleForOverriding
  void onEvent(Event event);

  /// Transforms the [events] stream along with a [transitionFn] function into
  /// a `Stream<Transition>`.
  /// Events that should be processed by [mapEventToState] need to be passed to
  /// [transitionFn].
  /// By default `asyncExpand` is used to ensure all [events] are processed in
  /// the order in which they are received.
  /// You can override [transformEvents] for advanced usage in order to
  /// manipulate the frequency and specificity with which [mapEventToState] is
  /// called as well as which [events] are processed.
  ///
  /// For example, if you only want [mapEventToState] to be called on the most
  /// recent [Event] you can use `switchMap` instead of `asyncExpand`.
  ///
  /// ```dart
  /// @override
  /// Stream<Transition<Event, State>> transformEvents(events, transitionFn) {
  ///   return events.switchMap(transitionFn);
  /// }
  /// ```
  ///
  /// Alternatively, if you only want [mapEventToState] to be called for
  /// distinct [events]:
  ///
  /// ```dart
  /// @override
  /// Stream<Transition<Event, State>> transformEvents(events, transitionFn) {
  ///   return super.transformEvents(
  ///     events.distinct(),
  ///     transitionFn,
  ///   );
  /// }
  /// ```
  @visibleForOverriding
  Stream<Transition<Event, State>> transformEvents(
    Stream<Event> events,
    TransitionFunction<Event, State> transitionFn,
  );

  /// Must be implemented when a class extends [Bloc].
  /// [mapEventToState] is called whenever an [event] is [add]ed
  /// and is responsible for converting that [event] into a new [state].
  /// [mapEventToState] can `yield` zero, one, or multiple states for an event.
  @protected
  @visibleForOverriding
  Stream<State> mapEventToState(Event event);

  /// Called whenever a [transition] occurs with the given [transition].
  /// A [transition] occurs when a new `event` is [add]ed and [mapEventToState]
  /// executed.
  /// [onTransition] is called before a [Bloc]'s [state] has been updated.
  /// A great spot to add logging/analytics at the individual [Bloc] level.
  ///
  /// **Note: `super.onTransition` should always be called first.**
  /// ```dart
  /// @override
  /// void onTransition(Transition<Event, State> transition) {
  ///   // Always call super.onTransition with the current transition
  ///   super.onTransition(transition);
  ///
  ///   // Custom onTransition logic goes here
  /// }
  /// ```
  ///
  /// See also:
  ///
  /// * [BlocObserver.onTransition] for observing transitions globally.
  ///
  @protected
  @mustCallSuper
  @visibleForOverriding
  void onTransition(Transition<Event, State> transition);

  /// Transforms the `Stream<Transition>` into a new `Stream<Transition>`.
  /// By default [transformTransitions] returns
  /// the incoming `Stream<Transition>`.
  /// You can override [transformTransitions] for advanced usage in order to
  /// manipulate the frequency and specificity at which `transitions`
  /// (state changes) occur.
  ///
  /// For example, if you want to debounce outgoing state changes:
  ///
  /// ```dart
  /// @override
  /// Stream<Transition<Event, State>> transformTransitions(
  ///   Stream<Transition<Event, State>> transitions,
  /// ) {
  ///   return transitions.debounceTime(Duration(seconds: 1));
  /// }
  /// ```
  @protected
  @visibleForOverriding
  Stream<Transition<Event, State>> transformTransitions(
    Stream<Transition<Event, State>> transitions,
  );

  /// Closes the `event` and `state` `Streams`.
  /// This method should be called when a [Bloc] is no longer needed.
  /// Once [close] is called, `events` that are [add]ed will not be
  /// processed.
  /// In addition, if [close] is called while `events` are still being
  /// processed, the [Bloc] will finish processing the pending `events`.
  @override
  @mustCallSuper
  @visibleForOverriding
  Future<void> close();

  /// Return a future which is completed when the [IBloc] is finished.
  ///
  /// If the `IBloc` fails with an error,
  /// perhaps in response to adding events using [add], [addStream], [addError]
  /// or [close], the [done] future will complete with that error.
  ///
  /// Otherwise, the returned future will complete when either:
  ///
  /// * all events have been processed and the sink has been closed, or
  /// * the sink has otherwise been stopped from handling more events
  ///   (for example by canceling a stream subscription).
  @override
  Future<void> get done;
}

/// {@template bloc}
/// Takes a `Stream` of `Events` as input
/// and transforms them into a `Stream` of `States` as output.
/// {@endtemplate}
abstract class Bloc<Event, State> extends BlocBase<State>
    implements IBloc<Event, State> {
  /// {@macro bloc}
  Bloc(State initialState) : super(initialState) {
    _bindEventsToStates();
  }

  /// The current [BlocObserver] instance.
  static BlocObserver observer = BlocObserver();

  StreamSubscription<Transition<Event, State>>? _transitionSubscription;

  final _eventController = StreamController<Event>.broadcast();

  @override
  Future<void> addStream(Stream<Event> eventStream) =>
      _eventController.addStream(eventStream);

  @override
  void add(Event event) {
    if (_eventController.isClosed) return;
    try {
      onEvent(event);
      _eventController.add(event);
    } catch (error, stackTrace) {
      onError(error, stackTrace);
    }
  }

  @protected
  @mustCallSuper
  @override
  void onEvent(Event event) {
    // ignore: invalid_use_of_protected_member
    observer.onEvent(this, event);
  }

  @override
  Stream<Transition<Event, State>> transformEvents(
    Stream<Event> events,
    TransitionFunction<Event, State> transitionFn,
  ) {
    return events.asyncExpand(transitionFn);
  }

  @protected
  @visibleForTesting
  @override
  @Deprecated(
    'Use EmitterMixin instead. Will be removed in v8.0.0',
  )
  void emit(State state) => super.emit(state);

  @protected
  @mustCallSuper
  @override
  void onTransition(Transition<Event, State> transition) {
    // ignore: invalid_use_of_protected_member
    Bloc.observer.onTransition(this, transition);
  }

  @override
  Stream<Transition<Event, State>> transformTransitions(
    Stream<Transition<Event, State>> transitions,
  ) {
    return transitions;
  }

  @override
  @mustCallSuper
  @override
  Future<void> close() async {
    await _eventController.close();
    await _transitionSubscription?.cancel();
    return super.close();
  }

  @override
  Future<void> get done => _eventController.done;

  void _bindEventsToStates() {
    _transitionSubscription = transformTransitions(
      transformEvents(
        _eventController.stream,
        (event) => mapEventToState(event).map(
          (nextState) => Transition(
            currentState: state,
            event: event,
            nextState: nextState,
          ),
        ),
      ),
    ).listen(
      (transition) {
        if (transition.nextState == state && _emitted) return;
        try {
          onTransition(transition);
          emit(transition.nextState);
        } catch (error, stackTrace) {
          onError(error, stackTrace);
        }
      },
      onError: onError,
    );
  }
}
