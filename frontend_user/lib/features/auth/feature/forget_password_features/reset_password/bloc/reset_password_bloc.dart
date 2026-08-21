import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final AuthData authData;
  ResetPasswordBloc(this.authData) : super(_Initial()) {
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
