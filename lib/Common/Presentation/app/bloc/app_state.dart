part of 'app_bloc.dart';

enum AuthenticationStatus { unKnown, authorized, unAuthorized }

class AppState extends Equatable {
  const AppState({
    required this.status,
    required this.theme,
  });

  const AppState.initial()
      : this(
          status: AuthenticationStatus.unKnown,
          theme: const LightAppTheme(),
        );

  final AuthenticationStatus status;

  final AppTheme theme;



  AppState copyWith({
    AuthenticationStatus? status,
    AppTheme? theme,
   
  }) {
    return AppState(
      status: status ?? this.status,
      theme: theme ?? this.theme,
    );
  }

  @override
  List<Object?> get props => [status, theme];
}
