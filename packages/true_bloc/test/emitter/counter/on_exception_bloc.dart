import 'dart:async';

import 'package:true_bloc/bloc.dart';

import '../counter/counter_bloc.dart';

class OnExceptionBloc extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  OnExceptionBloc({
    required this.exception,
    required this.onErrorCallback,
  }) : super(0);

  final Function onErrorCallback;
  final Exception exception;

  @override
  void onError(Object error, StackTrace stackTrace) {
    onErrorCallback(error, stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);

    throw exception;
  }
}
