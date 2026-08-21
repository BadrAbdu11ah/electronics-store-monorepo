import 'package:electronics_store_delivery/features/auth/data/delivery_auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_verfiy_code_event.dart';
part 'delivery_verfiy_code_state.dart';
part 'delivery_verfiy_code_bloc.freezed.dart';

class DeliveryVerfiyCodeBloc
    extends Bloc<DeliveryVerfiyCodeEvent, DeliveryVerfiyCodeState> {
  final DeliveryAuthData authData;
  DeliveryVerfiyCodeBloc(this.authData) : super(_Initial()) {
    on<_Submitted>((event, emit) async {
      emit(DeliveryVerfiyCodeState.loading());

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
