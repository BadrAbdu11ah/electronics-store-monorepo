import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_reset_password_event.dart';
part 'success_reset_password_state.dart';
part 'success_reset_password_bloc.freezed.dart';

class SuccessResetPasswordBloc
    extends Bloc<SuccessResetPasswordEvent, SuccessResetPasswordState> {
  SuccessResetPasswordBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      Future.delayed(const Duration(seconds: 3), () => emit(_Success()));
    });
  }
}
