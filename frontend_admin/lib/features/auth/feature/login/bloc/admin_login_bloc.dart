import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/features/auth/data/admin_auth_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_login_event.dart';
part 'admin_login_state.dart';
part 'admin_login_bloc.freezed.dart';

class AdminLoginBloc extends Bloc<AdminLoginEvent, AdminLoginState> {
  final AdminAuthData authData;

  AdminLoginBloc(this.authData) : super(AdminLoginState.initial()) {
    on<_Submitted>(
      (event, emit) => _onSubmitted(event.email, event.password, emit),
    );
    on<_Reset>((event, emit) => emit(AdminLoginState.initial()));
  }

  Future<void> _onSubmitted(
    String email,
    String password,
    Emitter<AdminLoginState> emit,
  ) async {
    // // 1. تحديث الحالة إلى "جاري التحميل"
    emit(AdminLoginState.loading());

    // // 2. طلب البيانات من السيرفر
    final response = await authData.login(email, password);

    // // 3. معالجة النتيجة
    await response.fold(
      (failure) async {
        emit(AdminLoginState.failure(failure.message));
      },
      (data) async {
        if (data["status"] == "failure") {
          emit(AdminLoginState.failure(data["errorKey"].toString()));
          return;
        }

        // // التأكد من أن الـ Handler لم يغلق قبل الـ emit
        if (!emit.isDone) {
          emit(AdminLoginState.success());
        }
      },
    );
  }
}
