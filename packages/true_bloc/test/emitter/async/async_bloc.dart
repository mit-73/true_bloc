import 'dart:async';

import 'package:meta/meta.dart';
import 'package:true_bloc/bloc.dart';

part 'async_event.dart';
part 'async_state.dart';

class AsyncBloc extends Bloc<AsyncEvent, AsyncState>
    with EmitterMixin<AsyncEvent, AsyncState> {
  AsyncBloc() : super(AsyncState.initial());

  @override
  Stream<AsyncState> mapEventToState(AsyncEvent event) async* {
    super.mapEventToState(event);

    yield state.copyWith(isLoading: true);
    await Future<void>.delayed(const Duration(milliseconds: 500));
    yield state.copyWith(isLoading: false, isSuccess: true);
  }
}
