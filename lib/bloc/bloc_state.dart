part of 'bloc_bloc.dart';

class BlocState {
  int counterValue;
  BlocState({
    required this.counterValue,
  });
}

class CounterInitial extends BlocState {
  CounterInitial() : super(counterValue: 0);
}
