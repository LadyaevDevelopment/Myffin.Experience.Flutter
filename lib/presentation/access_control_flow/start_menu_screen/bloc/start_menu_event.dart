part of 'start_menu_bloc.dart';

abstract class StartMenuEvent extends Equatable {
  const StartMenuEvent();

  @override
  List<Object> get props => [];
}

class StartMenuGetPolicyDocuments extends StartMenuEvent {}
