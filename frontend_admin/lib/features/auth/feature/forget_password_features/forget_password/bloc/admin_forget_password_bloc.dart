import 'package:frontend_admin/features/auth/data/admin_auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_forget_password_event.dart';
part 'admin_forget_password_state.dart';
part 'admin_forget_password_bloc.freezed.dart';

class AdminForgetPasswordBloc
    extends Bloc<AdminForgetPasswordEvent, AdminForgetPasswordState> {
  final AdminAuthData authData;
  AdminForgetPasswordBloc(this.authData)
    : super(AdminForgetPasswordState.initial()) {
    on<_CheckEmail>((event, emit) async {
      emit(_Loading());

      final result = await authData.checkEmail(event.email);

      result.fold((failure) => emit(_ServerFailure(failure.message)), (data) {
        if (data['status'] == 'failure') {
          emit(_Failure(data['errorKey']));
          return;
        }

        emit(_Success());
      });
    });

    on<_ResetPage>((_, emit) => emit(_Initial()));
  }
}
