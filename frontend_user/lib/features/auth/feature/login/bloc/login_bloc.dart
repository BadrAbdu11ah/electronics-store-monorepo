import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // حقن طبقة البيانات AuthData
  final AuthData authData;

  LoginBloc(this.authData) : super(const LoginState.initial()) {
    // الاستماع لحدث إرسال بيانات تسجيل الدخول
    on<_Submitted>(
      (event, emit) => _onSubmitted(event.email, event.password, emit),
    );
    // الاستماع لحدث إعادة إرسال رمز التحقق
    on<_ResendCode>((event, emit) => _onResendCode(event.email, emit));
    // الاستماع لحدث تسجيل الدخول عبر قوقل
    on<_LoginWithGoogle>((event, emit) => _onLoginWithGoogle(emit));
    // الاستماع لحدث إعادة ضبط الحالة إلى الوضع الابتدائي
    on<_Reset>((event, emit) => emit(const LoginState.initial()));
  }

  // معالجة طلب تسجيل الدخول بالبريد وكلمة المرور
  Future<void> _onSubmitted(
    String email,
    String password,
    Emitter<LoginState> emit,
  ) async {
    // 1. تحديث الحالة إلى "جاري التحميل"
    emit(const LoginState.loading());

    // 2. طلب إرسال البيانات من طبقة authData
    final response = await authData.login(email, password);

    // 3. معالجة الاستجابة المستلمة
    await response.fold(
      // معالجة خطأ الاتصال أو فشل السيرفر
      (failure) async {
        // إرسال حالة الفشل مع رسالة الخطأ
        emit(LoginState.failure(failure.message));
      },
      // معالجة نجاح وصول البيانات من السيرفر
      (data) async {
        // فحص ما إذا كان الحساب غير مفعل لتوجيه المستخدم لشاشة التفعيل
        if (data['errorKey'] == "accountNotActive") {
          // إرسال حالة عدم تفعيل الحساب
          emit(const LoginState.accountNotActive());
          return;
        }

        // فحص وجود أي فشل منطقي مسترجع من الباك إند
        if (data["status"] == "failure") {
          // إرسال حالة الفشل مع مفتاح الخطأ
          emit(LoginState.failure(data["errorKey"].toString()));
          return;
        }

        // التأكد من أن دالة الإرسال لم تغلق قبل إصدار الحالة
        if (!emit.isDone) {
          // إرسال حالة نجاح تسجيل الدخول
          emit(const LoginState.success());
        }
      },
    );
  }

  // معالجة طلب إعادة إرسال رمز التحقق
  Future<void> _onResendCode(String email, Emitter<LoginState> emit) async {
    // 1. تحديث الحالة إلى "جاري التحميل"
    emit(const LoginState.loading());

    // 2. طلب إعادة إرسال كود التفعيل من السيرفر
    final response = await authData.resetVerifyCode(email);

    // 3. معالجة نتيجة إعادة إرسال الكود
    response.fold(
      // إرسال حالة فشل السيرفر أو الاتصال
      (failure) => emit(LoginState.serverFailure(failure.message)),
      // معالجة استجابة السيرفر عند النجاح
      (data) {
        // فحص فشل عملية الإرسال من السيرفر
        if (data['status'] == 'failure') {
          // إرسال حالة الفشل مع المفتاح المسترجع
          emit(LoginState.failure(data['errorKey'].toString()));
          return;
        }

        // إرسال حالة نجاح إعادة إرسال الرمز
        emit(const LoginState.successResendCode());
      },
    );
  }

  // معالجة طلب تسجيل الدخول عبر قوقل
  Future<void> _onLoginWithGoogle(Emitter<LoginState> emit) async {
    // 1. تحديث الحالة إلى "جاري التحميل"
    emit(const LoginState.loading());

    // 2. تنفيذ طلب تسجيل الدخول بواسطة قوقل من طبقة البيانات
    final response = await authData.loginWithGoogle();

    // 3. معالجة النتيجة المسترجعة
    await response.fold(
      // معالجة خطأ الاتصال أو إلغاء المستخدم للعملية
      (failure) async {
        // إرسال حالة الفشل مع الرسالة
        emit(LoginState.failure(failure.message));
      },
      // معالجة نجاح الاستجابة من الباك إند
      (data) async {
        // فحص فشل الاستجابة المنطقية من السيرفر
        if (data['status'] == "failure") {
          // إرسال حالة الفشل مع المفتاح المسترجع
          emit(LoginState.failure(data['errorKey'].toString()));
          return;
        }

        // التأكد من عدم إغلاق الـ Handler قبل إرسال الحالة
        if (!emit.isDone) {
          // إرسال حالة نجاح تسجيل الدخول
          emit(const LoginState.success());
        }
      },
    );
  }
}
