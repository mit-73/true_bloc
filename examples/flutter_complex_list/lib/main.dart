import 'package:flutter/material.dart';
import 'package:flutter_complex_list/app.dart';
import 'package:flutter_complex_list/repository.dart';
import 'package:flutter_complex_list/simple_bloc_observer.dart';
import 'package:flutter_true_bloc/flutter_bloc.dart';
import 'package:true_bloc/bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App(repository: Repository()));
}
