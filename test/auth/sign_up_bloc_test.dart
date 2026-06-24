import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthData extends Mock implements AuthData {}

void main() {
  late SignUpBloc signUpBloc;
  late MockAuthData mockAuthData;

  const tUsername = 'badr';
  const tEmail = 'badr@example.com';
  const tPassword = 'password123';
  const tPhone = '0500000000';

  setUp(() {
    mockAuthData = MockAuthData();
    signUpBloc = SignUpBloc(mockAuthData);
  });

  group('SignUpBloc Tests - هندسة اختبارات إنشاء الحساب', () {
    // الاختبار الأول: التأكد من الحالة الابتدائية
    test('الحالة الابتدائية يجب أن تكون SignUpState.initial()', () {
      expect(signUpBloc.state, const SignUpState.initial());
      signUpBloc.close();
    });

    // الاختبار الثاني: نجاح إنشاء الحساب
    blocTest<SignUpBloc, SignUpState>(
      'emits [loading, success] when SignUpEvent.submitted is added.',
      build: () {
        when(
          () => mockAuthData.signup(
            username: tUsername,
            email: tEmail,
            password: tPassword,
            phone: tPhone,
          ),
        ).thenAnswer((_) async => Right({'status': 'success'}));
        return signUpBloc;
      },
      act: (bloc) => bloc.add(
        SignUpEvent.submitted(
          username: tUsername,
          email: tEmail,
          password: tPassword,
          phone: tPhone,
        ),
      ),
      expect: () => const <SignUpState>[
        SignUpState.loading(),
        SignUpState.success(tEmail),
      ],
    );

    // الاختبار الثالث: فشل التحقق من السيرفر بـ errorKey محدد
    blocTest<SignUpBloc, SignUpState>(
      'عند إرسال بيانات مسجلة مسبقاً، يجب إطلاق حالات [loading, failure] مع الـ errorKey',
      build: () {
        when(
          () => mockAuthData.signup(
            username: tUsername,
            email: tEmail,
            password: tPassword,
            phone: tPhone,
          ),
        ).thenAnswer(
          (_) async =>
              Right({'status': 'failure', 'errorKey': 'email_already_exists'}),
        );
        return signUpBloc;
      },
      act: (bloc) => bloc.add(
        SignUpEvent.submitted(
          username: tUsername,
          email: tEmail,
          password: tPassword,
          phone: tPhone,
        ),
      ),
      expect: () => const <SignUpState>[
        SignUpState.loading(),
        SignUpState.failure('email_already_exists'),
      ],
    );
    // الاختبار الرابع: فشل التحقق من السيرفر بـ Left محدد
    blocTest<SignUpBloc, SignUpState>(
      'عند إرسال بيانات مسجلة مسبقاً، يجب إطلاق حالات [loading, failure]',
      build: () {
        when(
          () => mockAuthData.signup(
            username: tUsername,
            email: tEmail,
            password: tPassword,
            phone: tPhone,
          ),
        ).thenAnswer(
          (_) async => Left(
            OfflineFailure('لا يوجد اتصال بالإنترنت، يرجى التحقق من الشبكة'),
          ),
        );
        return signUpBloc;
      },
      act: (bloc) => bloc.add(
        SignUpEvent.submitted(
          username: tUsername,
          email: tEmail,
          password: tPassword,
          phone: tPhone,
        ),
      ),
      expect: () => const <SignUpState>[
        SignUpState.loading(),
        SignUpState.serverFailure(
          'لا يوجد اتصال بالإنترنت، يرجى التحقق من الشبكة',
        ),
      ],
    );

    // الاختبار الرابع: إعادة تعيين الـ Bloc (Reset)
    blocTest<SignUpBloc, SignUpState>(
      'emits [initial()] when reset() is added.',
      seed: () => const SignUpState.failure('error'),
      build: () => signUpBloc,
      act: (bloc) => bloc.add(const SignUpEvent.reset()),
      expect: () => const <SignUpState>[SignUpState.initial()],
    );
  });
}
