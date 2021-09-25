import 'dart:async';

import 'package:true_bloc/bloc.dart';

import '../counter/counter_bloc.dart';

class CounterExceptionBloc extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  CounterExceptionBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);

    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        throw Exception('fatal exception');
    }
  }
}
