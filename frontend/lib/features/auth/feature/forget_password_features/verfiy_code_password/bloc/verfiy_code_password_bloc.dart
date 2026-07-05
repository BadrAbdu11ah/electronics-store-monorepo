import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verfiy_code_password_event.dart';
part 'verfiy_code_password_state.dart';
part 'verfiy_code_password_bloc.freezed.dart';

class VerfiyCodePasswordBloc
    extends Bloc<VerfiyCodePasswordEvent, VerfiyCodePasswordState> {
  final AuthData authData;
  VerfiyCodePasswordBloc(this.authData) : super(_Initial()) {
    on<_Submitted>((event, emit) async {
      emit(VerfiyCodePasswordState.loading());

      final response = await authData.verifyCode(
        event.email,
        event.verificationCode,
      );

      response.fold(
        (failure) =>
            emit(VerfiyCodePasswordState.serverFailure(failure.message)),
        (data) {
          if (data['status'] == 'failure') {
            emit(VerfiyCodePasswordState.failure(data['errorKey']));
          }
          emit(VerfiyCodePasswordState.success());
        },
      );
    });

    on<_Reset>((event, emit) => emit(VerfiyCodePasswordState.initial()));
  }
}
