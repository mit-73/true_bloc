import 'package:true_bloc/bloc.dart';

class InstantEmitCubit extends Cubit<int> {
  InstantEmitCubit() : super(0) {
    emit(1);
  }

  void increment() => emit(state + 1);
}
