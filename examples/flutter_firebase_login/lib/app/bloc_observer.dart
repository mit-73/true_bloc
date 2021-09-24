// ignore_for_file: avoid_print
import 'package:true_bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(IBloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(IBlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print(change);
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}
