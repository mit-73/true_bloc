import 'package:angular/angular.dart';
import 'package:angular_counter/app_component.template.dart' as ng;
import 'package:true_bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(IBloc bloc, Object? event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(IBloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(IBlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(ng.AppComponentNgFactory);
}
