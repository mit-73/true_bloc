import 'dart:async';

import 'package:true_bloc/bloc.dart';

import '../counter/counter_bloc.dart';

class OnEventErrorBloc extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  OnEventErrorBloc({required this.exception}) : super(0);

  final Exception exception;

  @override
  // ignore: must_call_super
  void onEvent(CounterEvent event) {
    throw exception;
  }

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);
  }
}
