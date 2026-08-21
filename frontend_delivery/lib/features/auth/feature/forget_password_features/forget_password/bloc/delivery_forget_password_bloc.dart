import 'package:electronics_store_delivery/features/auth/data/delivery_auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_forget_password_event.dart';
part 'delivery_forget_password_state.dart';
part 'delivery_forget_password_bloc.freezed.dart';

class DeliveryForgetPasswordBloc
    extends Bloc<DeliveryForgetPasswordEvent, DeliveryForgetPasswordState> {
  final DeliveryAuthData authData;
  DeliveryForgetPasswordBloc(this.authData)
    : super(DeliveryForgetPasswordState.initial()) {
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
