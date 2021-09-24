part of 'bloc.dart';

abstract class IEmitter<State extends Object?> {
  /// Updates the [state] to the provided [state].
  /// [emit] does nothing if the instance has been closed.
  @protected
  @mustCallSuper
  void emit(State state);
}

mixin EmitterMixin<State extends Object?> on BlocBase<State>
    implements IEmitter<State> {
  @override
  void emit(state) {
    if (_stateController.isClosed) return;
    if (state == _state && _emitted) return;
    onChange(Change<State>(currentState: this.state, nextState: state));
    _state = state;
    _stateController.add(_state);
    _emitted = true;
  }
}
