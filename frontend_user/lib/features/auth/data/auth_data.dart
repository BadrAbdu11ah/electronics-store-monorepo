import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/core/services/auth_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthData {
  final ApiService apiService;
  final AppService appService;
  final AuthService authService;

  AuthData(this.apiService)
    : appService = AppService(),
      authService = AuthService();

  // 1. طلب تسجيل الدخول عبر البريد وكلمة المرور
  Future<Either<Failure, Map<String, dynamic>>> login(
    String email,
    String password,
  ) async {
    try {
      // إرسال طلب تسجيل الدخول إلى سيرفر الباك إند
      final response = await apiService.post(ApiEndpoints.login, {
        "email": email.trim(),
        "password": password,
      }, auth: false);

      return await response.fold(
        // إرجاع الخطأ في حال فشل الطلب من السيرفر
        (failure) => Left(failure),
        (data) async {
          // التأكد من استجابة السيرفر وتخطي المعالجة إذا كان الحساب غير مفعل أو به خطأ
          if (data['status'] == "failure") return Right(data);

          // حفظ البيانات والتوكن مركزياً
          await authService.saveAuthData(data);

          // استخراج بيانات المستخدم من مفتاح 'user'
          final userData = data['user'];
          // فحص ما إذا كانت البيانات عبارة عن خريطة
          if (userData is Map<String, dynamic>) {
            // استخراج معرف المستخدم
            final userId = userData['id'];
            // التأكد من أن المعرف غير فارغ
            if (userId != null) {
              // تخزين معرف المستخدم في المفضلة
              await appService.sharedPreferences.setInt('userId', userId);
            }
          }

          // تحديث الخطوة للميدل وير فور النجاح
          await appService.sharedPreferences.setString('step', '2');
          // فحص وجود معرف المستخدم في الاستجابة
          if (data['user'] != null && data['user']['id'] != null) {
            // تخزين المعرف في المفضلة
            await appService.sharedPreferences.setInt('id', data['user']['id']);
          }
          // حفظ بريد المستخدم في المفضلة
          await appService.sharedPreferences.setString('email', email.trim());

          // إرجاع البيانات بنجاح
          return Right(data);
        },
      );
    } catch (e) {
      // معالجة الاستثناءات غير المتوقعة
      return const Left(
        AuthFailure('حدث خطأ غير متوقع أثناء عملية تسجيل الدخول'),
      );
    }
  }

  // 2. طلب إنشاء حساب جديد
  Future<Either<Failure, Map<String, dynamic>>> signup({
    required String username,
    required String email,
    required String password,
    required String phone,
  }) async {
    // إرسال بيانات إنشاء الحساب إلى سيرفر الباك إند
    final response = await apiService.post(ApiEndpoints.signup, {
      "username": username.trim(),
      "email": email.trim(),
      "password": password,
      "phone": phone.trim(),
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) async {
      // فحص نجاح العملية
      if (data['status'] != "failure") {
        // حفظ بيانات المصادقة في حال النجاح
        await authService.saveAuthData(data);
      }
      return Right(data);
    });
  }

  // 3. تفعيل الحساب عن طريق كود التحقق الخاص بالسيرفر
  Future<Either<Failure, Map<String, dynamic>>> verifyCode(
    String email,
    String verifyCode,
  ) async {
    // إرسال البريد وكود التفعيل إلى الباك إند
    final response = await apiService.post(ApiEndpoints.verifyCode, {
      "email": email.trim(),
      "verifycode": verifyCode,
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) async {
      // فحص نجاح عملية التفعيل
      if (data['status'] != "failure") {
        // حفظ البيانات والتوكن وتغيير حالة الجلسة عند نجاح التفعيل
        await authService.saveAuthData(data);
        // تحديث الخطوة للميدل وير للتوجيه للرئيسية مباشرة
        await appService.sharedPreferences.setString('step', '2');
      }
      return Right(data);
    });
  }

  // 4. التأكد من وجود البريد الإلكتروني (نسيان كلمة المرور)
  Future<Either<Failure, Map<String, dynamic>>> checkEmail(String email) async {
    // إرسال طلب فحص البريد للباك إند
    final response = await apiService.post(ApiEndpoints.checkEmail, {
      "email": email.trim(),
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) => Right(data));
  }

  // 5. طلب إعادة إرسال رمز التحقق عبر الباك إند
  Future<Either<Failure, Map<String, dynamic>>> resetVerifyCode(
    String email,
  ) async {
    // إرسال البريد الإلكتروني لإعادة توليد كود التفعيل الجديد
    final response = await apiService.post(ApiEndpoints.resetVerifyCode, {
      "email": email.trim(),
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) => Right(data));
  }

  // 6. تعيين كلمة المرور الجديدة
  Future<Either<Failure, Map<String, dynamic>>> resetPassword(
    String email,
    String password,
  ) async {
    // إرسال كلمة المرور الجديدة مع البريد للسيرفر
    final response = await apiService.post(ApiEndpoints.resetPassword, {
      "email": email.trim(),
      "password": password,
    }, auth: false);

    return response.fold((failure) => Left(failure), (data) => Right(data));
  }

  // 7. طلب تسجيل الخروج
  Future<Either<Failure, Map<String, dynamic>>> logout() async {
    // إرسال طلب الخروج وإلغاء التوكن من السيرفر
    final response = await apiService.post(ApiEndpoints.logout, {}, auth: true);

    return response.fold((failure) => Left(failure), (data) async {
      // إعادة ضبط خطوة الميدل وير
      await appService.sharedPreferences.setString('step', "1");
      // حذف المعرف من المفضلة
      await appService.sharedPreferences.remove('id');
      // حذف البريد من المفضلة
      await appService.sharedPreferences.remove('email');
      return Right(data);
    });
  }

  // 8. طلب تسجيل الدخول عبر قوقل (Google Login)
  Future<Either<Failure, Map<String, dynamic>>> loginWithGoogle() async {
    try {
      // 1. فتح واجهة المصادقة واختيار الحساب
      final GoogleSignInAccount? googleUser = await GoogleSignIn.instance
          .authenticate();

      // فحص ما إذا كانت النتيجة فارغة
      if (googleUser == null) {
        // إرجاع رسالة إلغاء العملية
        return const Left(AuthFailure('تم إلغاء عملية تسجيل الدخول'));
      }

      // 2. استخراج توكين المصادقة من قوقل
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // فحص توفر رمز idToken
      if (googleAuth.idToken == null) {
        // إرجاع خطأ عدم توفر التوكين
        return const Left(
          AuthFailure('تعذر الحصول على توكين المصادقة من قوقل'),
        );
      }

      // 3. إرسال رمز id_token فقط للباك إند للتحقق منه
      final response = await apiService.post(ApiEndpoints.googleLogin, {
        "id_token": googleAuth.idToken,
      }, auth: false);

      return response.fold((failure) => Left(failure), (data) async {
        // فحص فشل العملية من الباك إند
        if (data['status'] == "failure") return Right(data);

        // حفظ بيانات التوثيق والتوكن
        await authService.saveAuthData(data);
        // تحديث خطوة التوجيه في التطبيق
        await appService.sharedPreferences.setString('step', '2');
        // جلب البريد والـ ID الموثق من استجابة الباك إند
        final String userEmail = data['user']?['email'] ?? googleUser.email;
        final int? userId = data['user']?['id'];
        // حفظ البريد الإلكتروني والـ ID محلياً
        await appService.sharedPreferences.setString('email', userEmail);
        if (userId != null) {
          await appService.sharedPreferences.setInt('id', userId);
        }

        // إرجاع استجابة النجاح
        return Right(data);
      });
    } on GoogleSignInException catch (e) {
      // التقاط استثناء إلغاء العملية من قوقل
      if (e.code == GoogleSignInExceptionCode.canceled) {
        // إرجاع رسالة الإلغاء بشكل نظيف دون رفع استثناء
        return const Left(AuthFailure('تم إلغاء عملية تسجيل الدخول'));
      }
      // إرجاع خطأ مصادقة قوقل
      return const Left(AuthFailure('حدث خطأ أثناء الاتصال بحساب قوقل'));
    } catch (e) {
      // طباعة الخطأ للتحقق
      print("Error: $e");
      // إرجاع رسالة الفشل العامة
      return const Left(
        AuthFailure('حدث خطأ غير متوقع أثناء تسجيل الدخول عبر قوقل'),
      );
    }
  }
}
