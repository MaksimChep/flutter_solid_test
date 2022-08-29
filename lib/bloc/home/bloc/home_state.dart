part of 'home_bloc.dart';

@immutable
//Abstract state class
abstract class HomeState {}

//Initial state
class HomeInitial extends HomeState {}

//State if color was changed
class HomeColorChanged extends HomeState {
  final int r;
  final int g;
  final int b;

  HomeColorChanged({required this.r, required this.g, required this.b});
}
