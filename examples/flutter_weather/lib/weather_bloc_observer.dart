import 'package:true_bloc/bloc.dart';

class WeatherBlocObserver extends BlocObserver {
  @override
  void onEvent(IBloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent $event');
  }

  @override
  void onChange(IBlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange $change');
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition $transition');
  }

  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError $error');
    super.onError(bloc, error, stackTrace);
  }
}
