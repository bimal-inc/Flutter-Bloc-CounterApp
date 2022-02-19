import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc() : super(CounterInitial()) {
    on<IncrementEvent>(
        (event, emit) => emit(BlocState(counterValue: state.counterValue + 1)));

    on<DecrementEvent>(
        (event, emit) => emit(BlocState(counterValue: state.counterValue - 1)));
  }
}
