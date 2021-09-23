import 'dart:async';

import 'package:true_bloc/bloc.dart';

class SimpleBloc extends Bloc<dynamic, String> {
  SimpleBloc() : super('');

  @override
  Stream<String> mapEventToState(dynamic event) async* {
    yield 'data';
  }
}
