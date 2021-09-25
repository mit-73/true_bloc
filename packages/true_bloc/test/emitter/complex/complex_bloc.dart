import 'dart:async';

import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:true_bloc/bloc.dart';

part 'complex_event.dart';
part 'complex_state.dart';

class ComplexBloc extends Bloc<ComplexEvent, ComplexState>
    with EmitterMixin<ComplexEvent, ComplexState> {
  ComplexBloc() : super(ComplexStateA());

  @override
  Stream<Transition<ComplexEvent, ComplexState>> transformEvents(
    Stream<ComplexEvent> events,
    TransitionFunction<ComplexEvent, ComplexState> transitionFn,
  ) {
    return events.switchMap(transitionFn);
  }

  @override
  Stream<ComplexState> mapEventToState(ComplexEvent event) async* {
    super.mapEventToState(event);

    if (event is ComplexEventA) {
      yield ComplexStateA();
    } else if (event is ComplexEventB) {
      yield ComplexStateB();
    } else if (event is ComplexEventC) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
      yield ComplexStateC();
    } else if (event is ComplexEventD) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
      yield ComplexStateD();
    }
  }

  void setStateA() => emit(ComplexStateA());

  void setStateB() => emit(ComplexStateB());

  @override
  Stream<Transition<ComplexEvent, ComplexState>> transformTransitions(
    Stream<Transition<ComplexEvent, ComplexState>> transitions,
  ) {
    return transitions.debounceTime(const Duration(milliseconds: 50));
  }
}
