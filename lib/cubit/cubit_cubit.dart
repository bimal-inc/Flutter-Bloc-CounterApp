import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_state.dart';

class CubitCubit extends Cubit<CubitState> {
  CubitCubit() : super(CubitInitial(number: 0));

  // void increment() => emit(CubitState(number: state.number));
}
