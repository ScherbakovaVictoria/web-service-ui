part of 'menu_bloc.dart';

@immutable
abstract class MenuState {}

class MenuInitial extends MenuState {}

class RestorauntMenu extends MenuState {
  Response response;
  RestorauntMenu(this.response);
}
