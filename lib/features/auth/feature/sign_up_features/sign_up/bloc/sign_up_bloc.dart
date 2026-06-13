import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthData authData;
  SignUpBloc(this.authData) : super(SignUpState.initial()) {
    on<_Submitted>((event, emit) => _onSubmittd(emit, event));

    on<_Reset>((event, emit) => emit(SignUpState.initial()));
  }

  Future<void> _onSubmittd(Emitter<SignUpState> emit, _Submitted event) async {
    emit(SignUpState.loading());

    final response = await authData.signup(
      username: event.username,
      email: event.email,
      password: event.password,
      phone: event.phone,
    );

    response.fold(
      (failure) => emit(SignUpState.serverFailure(failure.message)),
      (data) async {
        if (data['status'] == 'failure') {
          emit(SignUpState.failure(data['errorKey']));
          return;
        }
        emit(SignUpState.success(event.email));
      },
    );
  }
}
