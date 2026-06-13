import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/features/auth/data/auth_data.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/bloc/forget_password_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthData extends Mock implements AuthData {}

void main() {
  group('ForgetPasswordBloc', () {
    late ForgetPasswordBloc forgetPasswordBloc;
    late MockAuthData mockAuthData;

    const tEmail = 'test@example.com';

    setUp(() {
      mockAuthData = MockAuthData();
      forgetPasswordBloc = ForgetPasswordBloc(mockAuthData);
    });

    test('should emit initial state', () {
      expect(forgetPasswordBloc.state, const ForgetPasswordState.initial());
      forgetPasswordBloc.close();
    });

    blocTest<ForgetPasswordBloc, ForgetPasswordState>(
      'emits [loading, success] when submit event is added with valid email',
      build: () {
        when(
          () => mockAuthData.checkEmail(tEmail),
        ).thenAnswer((_) async => const Right({'status': 'success'}));
        return forgetPasswordBloc;
      },
      act: (bloc) => bloc.add(const ForgetPasswordEvent.checkEmail(tEmail)),
      expect: () => const <ForgetPasswordState>[
        ForgetPasswordState.loading(),
        ForgetPasswordState.success(),
      ],
    );

    blocTest<ForgetPasswordBloc, ForgetPasswordState>(
      'emits [loading, failure] when submit event is added with invalid email',
      build: () {
        when(() => mockAuthData.checkEmail(tEmail)).thenAnswer(
          (_) async => const Right({
            'status': 'failure',
            'errorKey': 'verificationCodeIncorrect',
          }),
        );
        return forgetPasswordBloc;
      },
      act: (bloc) => bloc.add(const ForgetPasswordEvent.checkEmail(tEmail)),
      expect: () => const <ForgetPasswordState>[
        ForgetPasswordState.loading(),
        ForgetPasswordState.failure('verificationCodeIncorrect'),
      ],
    );
    blocTest<ForgetPasswordBloc, ForgetPasswordState>(
      'emits [loading, ServerFailure] when submit event is added with invalid email',
      build: () {
        when(
          () => mockAuthData.checkEmail(tEmail),
        ).thenAnswer((_) async => const Left(ServerFailure('Server error')));
        return forgetPasswordBloc;
      },
      act: (bloc) => bloc.add(const ForgetPasswordEvent.checkEmail(tEmail)),
      expect: () => const <ForgetPasswordState>[
        ForgetPasswordState.loading(),
        ForgetPasswordState.serverFailure('Server error'),
      ],
    );

    blocTest<ForgetPasswordBloc, ForgetPasswordState>(
      'emits [initial] when resetPage event is added',
      build: () {
        return forgetPasswordBloc;
      },
      act: (bloc) => bloc.add(const ForgetPasswordEvent.resetPage()),
      expect: () => const <ForgetPasswordState>[ForgetPasswordState.initial()],
    );
  });
}
