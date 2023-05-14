part of 'start_menu_bloc.dart';

abstract class StartMenuState extends Equatable {
  const StartMenuState();

  @override
  List<Object> get props => [];
}

class StartMenuInitial extends StartMenuState {}

class StartMenuProgress extends StartMenuState {}

class StartMenuDocuments extends StartMenuState {
  final List<PolicyDocument> documents;
  const StartMenuDocuments({required this.documents});
}

class StartMenuError extends StartMenuState {}
