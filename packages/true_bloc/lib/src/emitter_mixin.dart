part of 'bloc.dart';

abstract class IEmitter<Event extends Object?, State extends Object?> {
  /// Updates the [state] to the provided [state].
  /// [emit] does nothing if the instance has been closed.
  @protected
  @mustCallSuper
  void emit(State state);
}

mixin EmitterMixin<Event extends Object?, State extends Object?>
    on Bloc<Event, State> implements IEmitter<Event, State> {
  @protected
  @mustCallSuper
  @override
  void emit(State state) => _emit(state);

  @protected
  @visibleForOverriding
  @mustCallSuper
  @override
  Stream<State> mapEventToState(Event event) => mapEventToState(event);
}
