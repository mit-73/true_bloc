import 'dart:async';

import 'package:true_bloc/bloc.dart';

import '../counter/counter_bloc.dart';

class OnErrorBloc extends Bloc<CounterEvent, int>
    with EmitterMixin<CounterEvent, int> {
  OnErrorBloc({required this.error, required this.onErrorCallback}) : super(0);

  final Function onErrorCallback;
  final Error error;

  @override
  void onError(Object error, StackTrace stackTrace) {
    onErrorCallback(error, stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    super.mapEventToState(event);

    throw error;
  }
}