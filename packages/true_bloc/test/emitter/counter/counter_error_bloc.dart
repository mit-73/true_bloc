import 'dart:async';

import 'package:true_bloc/bloc.dart';

import '../counter/counter_bloc.dart';

class CounterErrorBloc extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  CounterErrorBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);

    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        throw Error();
    }
  }
}
