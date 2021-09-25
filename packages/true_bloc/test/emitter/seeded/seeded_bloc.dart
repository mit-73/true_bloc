import 'package:true_bloc/bloc.dart';

class SeededBloc extends Bloc<String, int> with EmitterMixin<String, int> {
  SeededBloc({required this.seed, required this.states}) : super(seed);

  final List<int> states;
  final int seed;

  @override
  Stream<int> mapEventToState(String event) async* {
    super.mapEventToState(event);

    for (final state in states) {
      yield state;
    }
  }
}
