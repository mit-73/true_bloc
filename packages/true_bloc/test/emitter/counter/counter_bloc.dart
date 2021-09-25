import 'dart:async';

import 'package:true_bloc/bloc.dart';

typedef OnEventCallback = Function(CounterEvent);
typedef OnTransitionCallback = Function(Transition<CounterEvent, int>);
typedef OnErrorCallback = Function(Object error, StackTrace? stackTrace);

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  CounterBloc({
    this.onEventCallback,
    this.onTransitionCallback,
    this.onErrorCallback,
  }) : super(0);

  final OnEventCallback? onEventCallback;
  final OnTransitionCallback? onTransitionCallback;
  final OnErrorCallback? onErrorCallback;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);

    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }

  void reset() => emit(0);

  void decrement() => emit(state - 1);

  void increment() => emit(state + 1);

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    onEventCallback?.call(event);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    onTransitionCallback?.call(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    onErrorCallback?.call(error, stackTrace);
    super.onError(error, stackTrace);
  }
}
