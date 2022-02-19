part of 'bloc_bloc.dart';

@immutable
abstract class BlocEvent {}

class IncrementEvent extends BlocEvent {}

class DecrementEvent extends BlocEvent {}
