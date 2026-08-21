import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/favorite/bloc/favorite_bloc.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockAppService extends Mock implements AppService {}

class MockFavoriteData extends Mock implements FavoriteData {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group("Favorite Bloc Test", () {
    late FavoriteBloc favoriteBloc;
    late MockAppService mockAppService;
    late MockFavoriteData mockFavoriteData;
    late MockSharedPreferences mockSharedPreferences;

    // تجهيز عينة بيانات للاختبار
    final dummyItems = [
      ItemModel(
        id: 1,
        name: "Product 1",
        nameAr: "منتج 1",
        price: 100.0,
        image: "url",
      ),
      ItemModel(
        id: 2,
        name: "Product 2",
        nameAr: "منتج 2",
        price: 150.0,
        image: "url",
      ),
    ];

    setUp(() {
      mockFavoriteData = MockFavoriteData();
      mockAppService = MockAppService();
      mockSharedPreferences = MockSharedPreferences();

      when(
        () => mockAppService.sharedPreferences,
      ).thenReturn(mockSharedPreferences);
      when(() => mockSharedPreferences.getString("lang")).thenReturn("ar");

      favoriteBloc = FavoriteBloc(
        appService: mockAppService,
        favoriteData: mockFavoriteData,
      );
    });

    tearDown(() {
      favoriteBloc.close();
    });

    // ================= Loading Cases =================

    // 1. اختبار تحميل البيانات بشكل صحيح وعرض المنتجات
    blocTest<FavoriteBloc, FavoriteState>(
      'يجب إرسال حالة Loading ثم Loaded بالمنتجات عند نجاح جلب البيانات',
      build: () {
        when(
          () => mockFavoriteData.viewFavorite(),
        ).thenAnswer((_) async => Right(dummyItems));
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(const FavoriteEvent.loadFavoriteProducts()),
      expect: () => [
        FavoriteState(status: const FavoriteStatus.loading()),
        FavoriteState(status: const FavoriteStatus.loaded(), items: dummyItems),
      ],
    );

    // 2. اختبار حالة السلة/المفضلة فارغة (Empty State)
    blocTest<FavoriteBloc, FavoriteState>(
      'يجب إرسال حالة noData عندما يعيد السيرفر قائمة فارغة',
      build: () {
        when(
          () => mockFavoriteData.viewFavorite(),
        ).thenAnswer((_) async => Left(EmptyDataFailure("القائمة فارغة")));
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(const FavoriteEvent.loadFavoriteProducts()),
      expect: () => [
        FavoriteState(status: const FavoriteStatus.loading()),
        FavoriteState(status: const FavoriteStatus.noData("القائمة فارغة")),
      ],
    );

    // 3. أن يفشل التحميل من السرفر وإطلاق serverFailure وعرض واجهة الخطأ
    blocTest<FavoriteBloc, FavoriteState>(
      'يجب إرسال حالة serverFailure عند حدوث خطأ في الاتصال بالسيرفر',
      build: () {
        when(
          () => mockFavoriteData.viewFavorite(),
        ).thenAnswer((_) async => Left(ServerFailure("خطأ في السيرفر")));
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(const FavoriteEvent.loadFavoriteProducts()),
      expect: () => [
        FavoriteState(status: const FavoriteStatus.loading()),
        FavoriteState(
          status: const FavoriteStatus.serverFailure("خطأ في السيرفر"),
        ),
      ],
    );

    // ================= Remove Favorite Actions =================

    // 4. اختبار حذف المنتج بشكل صحيح (Optimistic UI Success)
    blocTest<FavoriteBloc, FavoriteState>(
      'يجب تحديث القائمة محلياً فوراً ثم تأكيد الحذف بنجاح من السيرفر',
      seed: () => FavoriteState(
        items: dummyItems,
        status: const FavoriteStatus.loaded(),
      ),
      build: () {
        when(
          () => mockFavoriteData.removeFavorite(1),
        ).thenAnswer((_) async => const Right("تم الحذف بنجاح"));
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(const FavoriteEvent.removeFavorite(1)),
      expect: () => [
        FavoriteState(
          items: [dummyItems[1]],
          status: const FavoriteStatus.loaded(),
          removeStatus: const RemoveStatus.initial(),
        ),
        FavoriteState(
          items: [dummyItems[1]],
          status: const FavoriteStatus.loaded(),
          removeStatus: const RemoveStatus.success("تم الحذف بنجاح"),
        ),
      ],
    );

    // 5. اختبار فشل حذف المنتج واستعادة القائمة القديمة (Optimistic UI Failure)
    blocTest<FavoriteBloc, FavoriteState>(
      'يجب تحديث القائمة محلياً ثم استعادتها لشكها الأصلي عند فشل الحذف في السيرفر',
      seed: () => FavoriteState(
        items: dummyItems,
        status: const FavoriteStatus.loaded(),
      ),
      build: () {
        when(
          () => mockFavoriteData.removeFavorite(1),
        ).thenAnswer((_) async => Left(ServerFailure("فشل الاتصال")));
        return favoriteBloc;
      },
      act: (bloc) => bloc.add(const FavoriteEvent.removeFavorite(1)),
      expect: () => [
        FavoriteState(
          items: [dummyItems[1]],
          status: const FavoriteStatus.loaded(),
          removeStatus: const RemoveStatus.initial(),
        ),
        FavoriteState(
          items: dummyItems,
          status: const FavoriteStatus.loaded(),
          removeStatus: const RemoveStatus.failure("فشل الاتصال"),
        ),
      ],
    );
  });
}
