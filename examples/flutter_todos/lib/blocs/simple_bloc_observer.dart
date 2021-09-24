import 'package:true_bloc/bloc.dart';

// We can extend `BlocObserver` and override `onTransition` and `onError`
// in order to handle transitions and errors from all Blocs.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(IBloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}
