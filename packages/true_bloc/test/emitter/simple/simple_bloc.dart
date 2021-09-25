import 'dart:async';

import 'package:true_bloc/bloc.dart';

class SimpleBloc extends Bloc<dynamic, String>
    with EmitterMixin<dynamic, String> {
  SimpleBloc() : super('');

  @override
  Stream<String> mapEventToState(dynamic event) async* {
    super.mapEventToState(event);

    yield 'data';
  }

  void test() {
    emit('test');
  }
}
