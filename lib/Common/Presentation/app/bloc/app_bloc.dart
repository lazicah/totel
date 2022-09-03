import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:totel/Common/Theme/theme.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.initial()) {
    on<AppLaunched>(_onAppLaunched);
    on<Authorize>((event, emit) {
      emit(
        state.copyWith(
          status: AuthenticationStatus.authorized,
        ),
      );
    });
  }

  Future<void> _onAppLaunched(AppLaunched event, Emitter<AppState> emit) async {
    var status = state.status;

    emit(
      state.copyWith(
        status: status,
      ),
    );
  }
}
