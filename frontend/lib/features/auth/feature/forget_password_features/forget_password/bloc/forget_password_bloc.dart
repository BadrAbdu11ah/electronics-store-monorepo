import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_event.dart';
part 'forget_password_state.dart';
part 'forget_password_bloc.freezed.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  final AuthData authData;
  ForgetPasswordBloc(this.authData) : super(ForgetPasswordState.initial()) {
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

    on<_ResetPage>((_, emit) => emit(ForgetPasswordState.initial()));
  }
}
