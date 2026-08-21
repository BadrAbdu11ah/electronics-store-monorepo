import 'package:electronics_store/core/services/app_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_sign_up_event.dart';
part 'success_sign_up_state.dart';
part 'success_sign_up_bloc.freezed.dart';

class SuccessSignUpBloc extends Bloc<SuccessSignUpEvent, SuccessSignUpState> {
  final AppService appService;
  SuccessSignUpBloc({required this.appService}) : super(_Initial()) {
    on<_Started>((event, emit) async {
      await appService.sharedPreferences.setString('step', '1');
      Future.delayed(
        const Duration(seconds: 3),
        () => emit(SuccessSignUpState.success()),
      );
    });
  }
}
