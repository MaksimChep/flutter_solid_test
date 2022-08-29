part of 'home_bloc.dart';

@immutable
//Abstract Bloc event
abstract class HomeEvent {}

//Event that calls when you need to change color
class ChangeColorEvent extends HomeEvent {}
