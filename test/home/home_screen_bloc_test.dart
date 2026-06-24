import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:electronics_store/features/home/home_screen/bloc/home_screen_bloc.dart';

void main() {
  group('HomeScreenBloc Tests', () {
    late HomeScreenBloc homeScreenBloc;

    // يتم تنفيذها قبل كل فحص (Test) لتهيئة الـ Bloc من جديد
    setUp(() {
      homeScreenBloc = HomeScreenBloc();
    });

    // يتم تنفيذها بعد كل فحص لإغلاق الـ Bloc وتحرير الذاكرة
    tearDown(() {
      homeScreenBloc.close();
    });

    // 1. اختبار الحالة الابتدائية للـ Bloc
    test(
      'الحالة الابتدائية يجب أن تحتوي على الترتيب الافتراضي والصفحة صفر',
      () {
        expect(
          homeScreenBloc.state,
          const HomeScreenState(status: HomeScreenStatus.initial()),
        );
        expect(
          homeScreenBloc.state.currentPage,
          0,
        ); // الافتراضي عادة 0 إذا لم يحدد غير ذلك
      },
    );

    // 2. اختبار تغيير الصفحة عند إرسال حدث _PageChanged
    blocTest<HomeScreenBloc, HomeScreenState>(
      'يجب تغيير قيمة currentPage إلى 1 عند إرسال حدث pageChanged',
      build: () => homeScreenBloc,
      act: (bloc) => bloc.add(const HomeScreenEvent.pageChanged(1)),
      expect: () => [
        const HomeScreenState(
          status: HomeScreenStatus.initial(),
          currentPage: 1,
        ),
      ],
    );

    // 3. اختبار التنقل لصفحة أخرى (مثل صفحة الإعدادات رقم 3)
    blocTest<HomeScreenBloc, HomeScreenState>(
      'يجب تغيير قيمة currentPage إلى 3 عند الانتقال لصفحة الإعدادات',
      build: () => homeScreenBloc,
      act: (bloc) => bloc.add(const HomeScreenEvent.pageChanged(3)),
      expect: () => [
        const HomeScreenState(
          status: HomeScreenStatus.initial(),
          currentPage: 3,
        ),
      ],
    );
  });
}
