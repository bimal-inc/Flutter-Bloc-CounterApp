part of 'cubit_cubit.dart';

abstract class CubitState {}

class CubitInitial extends CubitState {
  final int number;

  CubitInitial({required this.number});
}
