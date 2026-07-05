import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verfiy_code_sign_up_event.dart';
part 'verfiy_code_sign_up_state.dart';
part 'verfiy_code_sign_up_bloc.freezed.dart';

class VerfiyCodeSignUpBloc
    extends Bloc<VerfiyCodeSignUpEvent, VerfiyCodeSignUpState> {
  final AuthData authData;
  VerfiyCodeSignUpBloc(this.authData) : super(_Initial()) {
    on<_Submitted>((event, emit) async {
      emit(VerfiyCodeSignUpState.loading());

      final response = await authData.verifyCode(
        event.email,
        event.verificationCode,
      );

      response.fold(
        (failure) => emit(VerfiyCodeSignUpState.serverFailure(failure.message)),
        (data) {
          if (data['status'] == 'failure') {
            emit(VerfiyCodeSignUpState.failure(data['errorKey']));
          }
          emit(VerfiyCodeSignUpState.success());
        },
      );
    });

    on<_Reset>((event, emit) => emit(VerfiyCodeSignUpState.initial()));
  }
}
