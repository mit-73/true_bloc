import 'package:flutter/material.dart';
import 'package:flutter_true_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_cart/app.dart';
import 'package:flutter_shopping_cart/shopping_repository.dart';
import 'package:flutter_shopping_cart/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App(shoppingRepository: ShoppingRepository()));
}
