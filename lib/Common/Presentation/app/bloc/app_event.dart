part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppLaunched extends AppEvent {}

class Authorize extends AppEvent {}

class RemoveAuthorization extends AppEvent {}

