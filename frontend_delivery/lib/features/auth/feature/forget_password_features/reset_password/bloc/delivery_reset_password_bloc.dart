import 'package:electronics_store_delivery/features/auth/data/delivery_auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_reset_password_event.dart';
part 'delivery_reset_password_state.dart';
part 'delivery_reset_password_bloc.freezed.dart';

class DeliveryResetPasswordBloc
    extends Bloc<DeliveryResetPasswordEvent, DeliveryResetPasswordState> {
  final DeliveryAuthData authData;
  DeliveryResetPasswordBloc(this.authData) : super(_Initial()) {
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
