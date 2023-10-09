import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'count_event.dart';
part 'count_state.dart';

class CountBloc extends Bloc<CountEvent, int> {
  CountBloc() : super(0) {
    on<Increment>((event, emit) => emit(state + 1));
    on<Decrement>(
      (event, emit) {
        if (state > 0) emit(state - 1);
      },
    );
  }
}
