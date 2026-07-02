import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/home/data/home_data.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';

// 1. إنشاء طبقات محاكاة (Mock Classes) للاعتمادات الخارجية
class MockHomeData extends Mock implements HomeData {}

class MockAppService extends Mock implements AppService {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('HomePageBloc Tests', () {
    late HomePageBloc homePageBloc;
    late MockHomeData mockHomeData;
    late MockAppService mockAppService;
    late MockSharedPreferences mockSharedPreferences;

    // تجهيز البيانات الوهمية للفحص
    final mockCategories = [CategoryModel(id: 1, name: 'Electronics')];
    final mockItems = [ItemModel(id: 101, name: 'iPhone')];
    final mockSuccessData = {'categories': mockCategories, 'items': mockItems};

    setUp(() {
      mockHomeData = MockHomeData();
      mockAppService = MockAppService();
      mockSharedPreferences = MockSharedPreferences();

      when(
        () => mockAppService.sharedPreferences,
      ).thenReturn(mockSharedPreferences);
    });

    // 1. اختبار الحالة الابتدائية
    test('الحالة الابتدائية يجب أن تكون الافتراضية مع قيم فارغة', () {
      homePageBloc = HomePageBloc(
        homeData: mockHomeData,
        appService: mockAppService,
      );
      expect(homePageBloc.state, const HomePageState());
    });

    // 2. اختبار نجاح جلب البيانات من السيرفر عند بدء الصفحة
    blocTest<HomePageBloc, HomePageState>(
      'يجب إطلاق حالة loading ثم حالة loaded مع البيانات عند نجاح طلب السيرفر',
      build: () {
        // محاكاة قراءة اللغة من الذاكرة
        when(() => mockSharedPreferences.getString('lang')).thenReturn('ar');
        // محاكاة نجاح جلب البيانات وإرجاعها داخل Right
        when(
          () => mockHomeData.getData(),
        ).thenAnswer((_) async => Right(mockSuccessData));

        return HomePageBloc(homeData: mockHomeData, appService: mockAppService);
      },
      act: (bloc) => bloc.add(const HomePageEvent.started()),
      expect: () => [
        // أُطلقت أولاً لتحديث اللغة
        const HomePageState(lang: 'ar'),
        // أُطلقت داخل _onLoadData لتحديث الحالة إلى جاري التحميل
        const HomePageState(lang: 'ar', status: HomePageStatus.loading()),
        // أُطلقت في النهاية بعد استقبال البيانات بنجاح
        HomePageState(
          lang: 'ar',
          status: const HomePageStatus.loaded(),
          categories: mockCategories,
          items: mockItems,
        ),
      ],
    );

    // 3. اختبار فشل السيرفر عند بدء الصفحة
    blocTest<HomePageBloc, HomePageState>(
      'String يجب إطلاق حالة loading ثم serverFailure مع رسالة الخطأ عند فشل السيرفر',
      build: () {
        when(() => mockSharedPreferences.getString('lang')).thenReturn('en');
        // محاكاة فشل جلب البيانات وإرجاع كائن الخطأ داخل Left
        when(() => mockHomeData.getData()).thenAnswer(
          (_) async => Left(ServerFailure('خطأ في الاتصال بالسيرفر')),
        );

        return HomePageBloc(homeData: mockHomeData, appService: mockAppService);
      },
      act: (bloc) => bloc.add(const HomePageEvent.started()),
      expect: () => [
        const HomePageState(lang: 'en'),
        const HomePageState(lang: 'en', status: HomePageStatus.loading()),
        const HomePageState(
          lang: 'en',
          status: HomePageStatus.serverFailure('خطأ في الاتصال بالسيرفر'),
        ),
      ],
    );

    // 4. اختبار عملية تسجيل الخروج
    blocTest<HomePageBloc, HomePageState>(
      'يجب حفظ خطوة تسجيل الخروج في الذاكرة وإطلاق حالة loggedOut',
      build: () {
        // محاكاة عملية الحفظ في SharedPreferences وإرجاع true كمؤشر للنجاح
        when(
          () => mockSharedPreferences.setString('step', '1'),
        ).thenAnswer((_) async => true);

        return HomePageBloc(homeData: mockHomeData, appService: mockAppService);
      },
      act: (bloc) => bloc.add(const HomePageEvent.logout()),
      expect: () => [
        const HomePageState(status: HomePageStatus.loading()),
        const HomePageState(status: HomePageStatus.loggedOut()),
      ],
      verify: (_) {
        // التحقق الفعلي من أن الدالة تم استدعاؤها في الذاكرة لمنع أي تسريب برمجي
        verify(() => mockSharedPreferences.setString('step', '1')).called(1);
      },
    );
  });
}
