import 'package:frontend_admin/features/auth/data/admin_auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_verfiy_code_event.dart';
part 'admin_verfiy_code_state.dart';
part 'admin_verfiy_code_bloc.freezed.dart';

class AdminVerfiyCodeBloc
    extends Bloc<AdminVerfiyCodeEvent, AdminVerfiyCodeState> {
  final AdminAuthData authData;
  AdminVerfiyCodeBloc(this.authData) : super(_Initial()) {
    on<_Submitted>((event, emit) async {
      emit(AdminVerfiyCodeState.loading());

      final response = await authData.verifyCode(
        event.email,
        event.verificationCode,
      );

      response.fold((failure) => emit(_ServerFailure(failure.message)), (data) {
        if (data['status'] == 'failure') {
          emit(_Failure(data['errorKey']));
        }
        emit(_Success());
      });
    });

    on<_Reset>((event, emit) => emit(_Initial()));
  }
}
