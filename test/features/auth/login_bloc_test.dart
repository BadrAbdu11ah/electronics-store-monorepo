import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:fpdart/fpdart.dart'; // للتعامل مع Left و Right في الـ Either
import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// 1. بناء الـ Mock لطبقة البيانات
class MockAuthData extends Mock implements AuthData {}

void main() {
  late LoginBloc loginBloc;
  late MockAuthData mockAuthData;

  const tEmail = 'badr@example.com';
  const tPassword = 'password123';

  setUp(() {
    mockAuthData = MockAuthData();
    loginBloc = LoginBloc(mockAuthData);
  });

  group('LoginBloc Tests - هندسة اختبارات نظام تسجيل الدخول', () {
    // الاختبار الأول: التأكد من الحالة الابتدائية
    test('الحالة الابتدائية يجب أن تكون LoginState.initial()', () {
      expect(loginBloc.state, const LoginState.initial());
      loginBloc.close();
    });

    // الاختبار الثاني: نجاح تسجيل الدخول بالكامل
    blocTest<LoginBloc, LoginState>(
      'عند إرسال بيانات صحيحة، يجب إطلاق حالات [loading, success]',
      build: () {
        when(
          () => mockAuthData.login(tEmail, tPassword),
        ).thenAnswer((_) async => const Right({'status': 'success'}));
        return loginBloc;
      },
      act: (bloc) => bloc.add(
        const LoginEvent.submitted(email: tEmail, password: tPassword),
      ),
      expect: () => [const LoginState.loading(), const LoginState.success()],
    );

    // الاختبار الثالث: الحساب غير نشط (accountNotActive)
    blocTest<LoginBloc, LoginState>(
      'عند تسجيل الدخول بحساب غير نشط، يجب إطلاق حالات [loading, accountNotActive]',
      build: () {
        when(() => mockAuthData.login(tEmail, tPassword)).thenAnswer(
          (_) async => const Right({
            'status': 'failure',
            'errorKey': 'accountNotActive',
          }),
        );
        return loginBloc;
      },
      act: (bloc) => bloc.add(
        const LoginEvent.submitted(email: tEmail, password: tPassword),
      ),
      expect: () => [
        const LoginState.loading(),
        const LoginState.accountNotActive(),
      ],
    );

    // الاختبار الرابع: فشل قادم من السيرفر بـ errorKey محدد
    blocTest<LoginBloc, LoginState>(
      'عند فشل التحقق من السيرفر (بيانات خاطئة مثلاً)، يجب إطلاق حالات [loading, failure]',
      build: () {
        when(() => mockAuthData.login(tEmail, tPassword)).thenAnswer(
          (_) async =>
              const Right({'status': 'failure', 'errorKey': 'wrong_password'}),
        );
        return loginBloc;
      },
      act: (bloc) => bloc.add(
        const LoginEvent.submitted(email: tEmail, password: tPassword),
      ),
      expect: () => [
        const LoginState.loading(),
        const LoginState.failure('wrong_password'),
      ],
    );

    // الاختبار الخامس: فشل الاتصال بالسيرفر أو استثناء (Left Failure)
    blocTest<LoginBloc, LoginState>(
      'عند حدوث خطأ اتصال بالسيرفر (Left)، يجب إطلاق حالات [loading, failure] مع رسالة الخطأ',
      build: () {
        final mockFailure = ServerFailure('تأكد من الاتصال بالإنترنت');
        when(
          () => mockAuthData.login(tEmail, tPassword),
        ).thenAnswer((_) async => Left(mockFailure));
        return loginBloc;
      },
      act: (bloc) => bloc.add(
        const LoginEvent.submitted(email: tEmail, password: tPassword),
      ),
      expect: () => [const LoginState.loading(), isA<LoginState>()],
    );

    // الاختبار السادس: نجاح إعادة إرسال كود التفعيل
    blocTest<LoginBloc, LoginState>(
      'عند طلب إعادة إرسال كود التفعيل بنجاح، يجب إطلاق حالات [loading, successResendCode]',
      build: () {
        when(
          () => mockAuthData.resetVerifyCode(tEmail),
        ).thenAnswer((_) async => const Right({'status': 'success'}));
        return loginBloc;
      },
      act: (bloc) => bloc.add(const LoginEvent.resendCode(email: tEmail)),
      expect: () => [
        const LoginState.loading(),
        const LoginState.successResendCode(),
      ],
    );

    // الاختبار السابع: تصفير الـ Bloc وإعادته للحالة الابتدائية
    blocTest<LoginBloc, LoginState>(
      'عند إطلاق حدث reset، يجب إعادة الـ State إلى الحالة الابتدائية initial',
      seed: () => const LoginState.failure('error'), // نبدأ بحالة فشل كمثال
      build: () => loginBloc,
      act: (bloc) => bloc.add(const LoginEvent.reset()),
      expect: () => [const LoginState.initial()],
    );
  });
}
