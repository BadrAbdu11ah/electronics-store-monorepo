import 'package:frontend_admin/features/auth/data/admin_auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_reset_password_event.dart';
part 'admin_reset_password_state.dart';
part 'admin_reset_password_bloc.freezed.dart';

class AdminResetPasswordBloc
    extends Bloc<AdminResetPasswordEvent, AdminResetPasswordState> {
  final AdminAuthData authData;
  AdminResetPasswordBloc(this.authData) : super(_Initial()) {
    on<_ResetPassword>((event, emit) async {
      emit(_Loading());
      final result = await authData.resetPassword(event.email, event.password);

      result.fold((failure) => emit(_ServerFailure(failure.message)), (data) {
        if (data['status'] == 'failure') {
          emit(_Failure(data['errorKey']));
          return;
        }

        emit(_Success());
      });
    });
    on<_ResetPage>((event, emit) => emit(_Initial()));
    on<_ThePasswordDoesNotMatch>(
      (event, emit) => emit(_Failure("The password does not match")),
    );
  }
}
