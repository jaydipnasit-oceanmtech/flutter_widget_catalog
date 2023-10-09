part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}

class CounterLoading extends CounterState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class CounterLoadedState extends CounterState {
  final int? count;
  DateTime? selectedDate;

  CounterLoadedState({this.count, this.selectedDate});

  @override
  List<Object> get props => [count!, selectedDate!];
}

// class PickedDateState extends CounterState {
//   final DateTime selectedDate;

//   const PickedDateState(this.selectedDate);

//   @override
//   List<Object?> get props => throw UnimplementedError();
// }

class CounterErrorState extends CounterState {
  final String error;
  const CounterErrorState(this.error);
  @override
  List<Object> get props => [error];
}
