part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  // الحالة الابتدائية
  const factory LoginState.initial() = _Initial;

  // حالة جاري التحميل
  const factory LoginState.loading() = _Loading;

  // حالة نجاح تسجيل الدخول
  const factory LoginState.success() = _Success;

  // حالة فشل عملية تسجيل الدخول
  const factory LoginState.failure(String message) = _Failure;

  // حالة خطأ الاتصال بالسيرفر
  const factory LoginState.serverFailure(String message) = _ServerFailure;

  // حالة الحساب غير مفعل
  const factory LoginState.accountNotActive() = _AccountNotActive;

  // حالة نجاح إعادة إرسال كود التفعيل
  const factory LoginState.successResendCode() = _SuccessResendCode;
}
