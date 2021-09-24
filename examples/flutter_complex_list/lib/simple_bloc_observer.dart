import 'package:true_bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}
