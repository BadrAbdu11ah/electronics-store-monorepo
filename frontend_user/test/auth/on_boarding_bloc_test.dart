import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/features/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 1. محاكاة الـ AppService والـ SharedPreferences
class MockAppService extends Mock implements AppService {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late OnBoardingBloc onBoardingBloc;
  late MockAppService mockAppService;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockAppService = MockAppService();
    mockSharedPreferences = MockSharedPreferences();

    // ربط الـ SharedPreferences مع الـ AppService
    when(
      () => mockAppService.sharedPreferences,
    ).thenReturn(mockSharedPreferences);

    onBoardingBloc = OnBoardingBloc(mockAppService);
  });

  group('OnBoardingBloc Tests - هندسة اختبارات الـ OnBoarding', () {
    // الاختبار الأول: اختبار الحالة الابتدائية
    test(
      'الحالة الابتدائية يجب أن تكون OnBoardingState مع القيم الافتراضية',
      () {
        expect(onBoardingBloc.state, const OnBoardingState());
        expect(onBoardingBloc.state.currentPage, 0);
        onBoardingBloc.close();
      },
    );

    // الاختبار الثاني: معالجة حدث الـ Swipe اليدوي المربوط بـ onPageChanged
    blocTest<OnBoardingBloc, OnBoardingState>(
      'عند تغيير الصفحة عبر السحب يدوياً في الـ PageView، يجب تحديث الـ currentPage',
      build: () => onBoardingBloc,
      act: (bloc) => bloc.add(const OnBoardingEvent.pageChanged(index: 2)),
      expect: () => [
        const OnBoardingState(
          status: OnBoardingStatus.initial(),
          currentPage: 2,
        ),
      ],
    );

    // الاختبار الثالث الجديد: مستقر ونظيف 100% بدون أي تعقيدات
    blocTest<OnBoardingBloc, OnBoardingState>(
      'عند الضغط على التالي ولم نصل للنهاية، يجب الانتقال للصفحة التالية وتحديث الـ currentPage',
      build: () => onBoardingBloc,
      act: (bloc) => bloc.add(const OnBoardingEvent.nextPage(listLength: 3)),
      expect: () => [
        const OnBoardingState(
          status: OnBoardingStatus.initial(),
          currentPage: 1,
        ),
      ],
    );

    // الاختبار الرابع: الوصول لنهاية الـ Slider وحفظ الخطوة
    blocTest<OnBoardingBloc, OnBoardingState>(
      'عند الضغط على التالي في الصفحة الأخيرة، يجب حفظ الخطوة محلياً والتوجيه للـ Login',
      build: () {
        when(
          () => mockSharedPreferences.setString("step", "1"),
        ).thenAnswer((_) async => true);
        return onBoardingBloc;
      },
      seed: () => const OnBoardingState(
        currentPage: 2,
      ), // محاكاة الوقوف على الصفحة الأخيرة
      act: (bloc) async {
        bloc.add(const OnBoardingEvent.nextPage(listLength: 3));
      },
      expect: () => [
        const OnBoardingState(
          status: OnBoardingStatus.navigateToLogin(),
          currentPage: 2,
        ),
      ],
      verify: (_) {
        verify(() => mockSharedPreferences.setString("step", "1")).called(1);
      },
    );

    // الاختبار الخامس: الضغط على زر تخطي (Skip)
    blocTest<OnBoardingBloc, OnBoardingState>(
      'عند الضغط على زر تخطي، يجب حفظ الحالة فوراً وتوجيه المستخدم لصفحة الـ Login',
      build: () {
        when(
          () => mockSharedPreferences.setString("step", "1"),
        ).thenAnswer((_) async => true);
        return onBoardingBloc;
      },
      act: (bloc) => bloc.add(const OnBoardingEvent.skip()),
      expect: () => [
        const OnBoardingState(
          status: OnBoardingStatus.navigateToLogin(),
          currentPage: 0,
        ),
      ],
      verify: (_) {
        verify(() => mockSharedPreferences.setString("step", "1")).called(1);
      },
    );
  });
}
