import 'dart:async';

import 'package:true_bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(IBlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onEvent(IBloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }

  @override
  void onChange(IBlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- bloc: ${bloc.runtimeType}, change: $change');
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
  }

  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- bloc: ${bloc.runtimeType}, error: $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(IBlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- bloc: ${bloc.runtimeType}');
  }
}

void main() async {
  Bloc.observer = SimpleBlocObserver();

  cubitMain();
  blocMain();

  /// Wait for next iteration of the event-loop
  /// to ensure event has been processed.
  await Future<void>.delayed(Duration.zero);

  blocCubitMain();
}

void cubitMain() {
  print('----------CUBIT----------');

  /// Create a `CounterCubit` instance.
  final cubit = CounterCubit();

  /// Access the state of the `cubit` via `state`.
  print(cubit.state); // 0

  /// Interact with the `cubit` to trigger `state` changes.
  cubit.increment();

  /// Access the new `state`.
  print(cubit.state); // 1

  /// Close the `cubit` when it is no longer needed.
  cubit.close();
}

void blocMain() async {
  print('----------BLOC----------');

  /// Create a `CounterBloc` instance.
  final bloc = CounterBloc();

  /// Access the state of the `bloc` via `state`.
  print(bloc.state);

  /// Interact with the `bloc` to trigger `state` changes.
  bloc.add(CounterEvent.increment);

  /// Wait for next iteration of the event-loop
  /// to ensure event has been processed.
  await Future<void>.delayed(Duration.zero);

  /// Access the new `state`.
  print(bloc.state);

  /// Close the `bloc` when it is no longer needed.
  await bloc.close();
}

void blocCubitMain() async {
  print('----------BLOC+CUBIT----------');

  /// Create a `CounterBloc` instance.
  final bloc = CounterBlocCubit();

  /// Access the state of the `bloc` via `state`.
  print(bloc.state); // 0

  /// Interact with the `cubit` to trigger `state` changes.
  bloc.increment();

  /// Access the new `state`.
  print(bloc.state); // 1

  /// Interact with the `bloc` to trigger `state` changes.
  bloc.add(CounterEvent.increment);

  /// Wait for next iteration of the event-loop
  /// to ensure event has been processed.
  await Future<void>.delayed(Duration.zero);

  /// Access the new `state`.
  print(bloc.state); // 2

  /// Interact with the `cubit` to trigger `state` changes.
  bloc.increment();

  /// Access the new `state`.
  print(bloc.state); // 3

  /// Interact with the `bloc` to trigger `state` changes.
  bloc.add(CounterEvent.increment);

  /// Wait for next iteration of the event-loop
  /// to ensure event has been processed.
  await Future<void>.delayed(Duration.zero);

  /// Access the new `state`.
  print(bloc.state); // 4

  /// Close the `bloc` when it is no longer needed.
  await bloc.close();
}

/// A `CounterCubit` which manages an `int` as its state.
class CounterCubit extends Bloc<Never, int> with EmitterMixin<Never, int> {
  /// The initial state of the `CounterCubit` is 0.
  CounterCubit() : super(0);

  /// When increment is called, the current state
  /// of the cubit is accessed via `state` and
  /// a new `state` is emitted via `emit`.
  void increment() => emit(state + 1);
}

/// The events which `CounterBloc` will react to.
enum CounterEvent { increment }

/// A `CounterBloc` which handles converting `CounterEvent`s into `int`s.
class CounterBloc extends Bloc<CounterEvent, int> {
  /// The initial state of the `CounterBloc` is 0.
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {

      /// When a `CounterEvent.increment` event is added,
      /// the current `state` of the bloc is accessed via the `state` property
      /// and a new state is emitted via `yield`.
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}

/// A `CounterBloc` which handles converting `CounterEvent`s into `int`s.
class CounterBlocCubit extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  /// The initial state of the `CounterBloc` is 0.
  CounterBlocCubit() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);

    switch (event) {

      /// When a `CounterEvent.increment` event is added,
      /// the current `state` of the bloc is accessed via the `state` property
      /// and a new state is emitted via `yield`.
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }

  /// When increment is called, the current state
  /// of the cubit is accessed via `state` and
  /// a new `state` is emitted via `emit`.
  void increment() => emit(state + 1);
}