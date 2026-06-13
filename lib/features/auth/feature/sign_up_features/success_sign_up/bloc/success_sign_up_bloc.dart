import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_sign_up_event.dart';
part 'success_sign_up_state.dart';
part 'success_sign_up_bloc.freezed.dart';

class SuccessSignUpBloc extends Bloc<SuccessSignUpEvent, SuccessSignUpState> {
  SuccessSignUpBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      Future.delayed(
        const Duration(seconds: 3),
        () => emit(SuccessSignUpState.success()),
      );
    });
  }
}
