import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/core/services/auth_service.dart';
import 'package:fpdart/fpdart.dart';

class AuthData {
  final ApiService apiService;
  final AppService appService = AppService();
  final AuthService authService = AuthService();

  AuthData(this.apiService);

  // 1. طلب تسجيل الدخول
  Future<Either<Failure, Map<String, dynamic>>> login(
    String email,
    String password,
  ) async {
    final response = await apiService.post(ApiEndpoints.login, {
      "email": email.trim(),
      "password": password,
    }, auth: false);

    // معالجة البيانات بشكل سليم بدعم Future الـ async داخل الـ fold عبر Future.all أو إرجاع القيمة مباشرة
    return response.fold((failure) => Left(failure), (data) async {
      if (data['status'] == "failure") return Right(data);

      // 1. حفظ البيانات والتوكن مركزياً
      await authService.saveAuthData(data);

      // 2. حفظ معرّف المستخدم (id) في SharedPreferences
      final userData = data['data'];
      if (userData is Map<String, dynamic>) {
        int? userId = userData['id'] ?? userData['user_id'];
        if (userId != null) {
          await appService.sharedPreferences.setInt('userId', userId);
        }
      }

      // 3. تحديث الـ Step للميدل وير (Middleware) فور النجاح
      await appService.sharedPreferences.setString('step', "2");
      return Right(data);
    });
  }

  // 2. طلب إنشاء حساب جديد
  Future<Either<Failure, Map<String, dynamic>>> signup({
    required String username,
    required String email,
    required String password,
    required String phone,
  }) async {
    final response = await apiService.post(ApiEndpoints.signup, {
      "name": username.trim(),
      "email": email.trim(),
      "password": password,
      "phone": phone.trim(),
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) async {
      if (data['status'] != "failure") {
        await authService.saveAuthData(data);
      }
      return Right(data);
    });
  }

  // 3. تفعيل الحساب عن طريق كود التحقق
  Future<Either<Failure, Map<String, dynamic>>> verifyCode(
    String email,
    String verifyCode,
  ) async {
    final response = await apiService.post(ApiEndpoints.verifyCode, {
      "email": email.trim(),
      "verify_code": verifyCode,
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) async {
      if (data['status'] != "failure") {
        await authService.saveAuthData(data);
      }
      return Right(data);
    });
  }

  // 4. المرحلة الأولى: التأكد من وجود البريد الإلكتروني لإرسال رمز التحقق (نسيان كلمة المرور)
  Future<Either<Failure, Map<String, dynamic>>> checkEmail(String email) async {
    final response = await apiService.post(ApiEndpoints.checkEmail, {
      "email": email.trim(),
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) => Right(data));
  }

  // 5. طلب إعادة إرسال رمز التحقق
  Future<Either<Failure, Map<String, dynamic>>> resetVerifyCode(
    String email,
  ) async {
    final response = await apiService.post(
      ApiEndpoints.resetVerifyCode,
      {},
      auth: false,
    );

    return response.fold((failure) => Left(failure), (data) => Right(data));
  }

  // 6. تعيين كلمة المرور الجديدة
  Future<Either<Failure, Map<String, dynamic>>> resetPassword(
    String email,
    String password,
  ) async {
    final response = await apiService.post(ApiEndpoints.resetPassword, {
      "email": email.trim(),
      "password": password,
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) => Right(data));
  }
}
