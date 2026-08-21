import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_admin/features/auth/data/admin_auth_data.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AdminAuthData adminAuthData;

  HomeBloc({required this.adminAuthData}) : super(HomeState.initial()) {
    on<_Logout>(_onLogout);
  }

  Future<void> _onLogout(_Logout event, Emitter<HomeState> emit) async {
    emit(HomeState.loading());

    var response = await adminAuthData.logout();

    response.fold(
      (failure) {
        emit(HomeState.logoutFailure(message: failure.message));
      },
      (r) {
        emit(HomeState.logoutSuccess());
      },
    );
  }
}
