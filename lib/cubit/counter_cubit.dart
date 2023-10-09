import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int count = 0;

  void increament() async {
    emit(CounterLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      count++;
      emit(CounterLoadedState(count: count));
    } catch (e) {
      emit(CounterErrorState("Erro during increamnet $e"));
    }
  }

  void dicrerament() async {
    emit(CounterLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      count--;
      emit(CounterLoadedState(count: count));
    } catch (e) {
      emit(CounterErrorState("Erro during increamnet $e"));
    }
  }

  void pickDate(DateTime selectedDate1) async {
    emit(CounterLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      emit(CounterLoadedState(selectedDate: selectedDate1));
    } catch (e) {
      emit(CounterErrorState("Erro during increamnet $e"));
    }
  }
}
