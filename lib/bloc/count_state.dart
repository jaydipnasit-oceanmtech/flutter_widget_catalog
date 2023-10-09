part of 'count_bloc.dart';

sealed class CountState extends Equatable {
  const CountState();
  
  @override
  List<Object> get props => [];
}

final class CountInitial extends CountState {}
