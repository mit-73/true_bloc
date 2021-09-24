import 'dart:developer';

import 'package:true_bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(IBloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log('${bloc.runtimeType} $event');
  }

  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    log('${bloc.runtimeType} $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('$transition');
  }
}
