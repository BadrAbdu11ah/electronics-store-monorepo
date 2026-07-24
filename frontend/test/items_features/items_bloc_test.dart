import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/favorite/data/favorite_data.dart';
import 'package:electronics_store/features/items_feature/data/item_data.dart';
import 'package:electronics_store/features/items_feature/items/bloc/items_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockAppService extends Mock implements AppService {}

class MockItemsData extends Mock implements ItemData {}

class MockFavoriteData extends Mock implements FavoriteData {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group("ItemsBloc Test", () {
    late ItemsBloc itemsBloc;
    late MockItemsData mockItemsData;
    late MockFavoriteData mockFavoriteData;
    late MockAppService mockAppService;
    late MockSharedPreferences mockSharedPreferences;

    final mockCategoryId = 1;
    final mockItemsId = 12;

    final categories = [CategoryModel(id: 1, name: "Elctronics")];
    final mockItemsList = [
      ItemModel(
        id: 12,
        category: CategoryModel(id: mockCategoryId, name: "Elctronics"),
        name: 'Iphone 17 pro',
        isFavorite: true,
      ),
    ];
    final mockFavorite = {12: true};

    setUp(() {
      mockItemsData = MockItemsData();
      mockFavoriteData = MockFavoriteData();
      mockAppService = MockAppService();

      itemsBloc = ItemsBloc(
        itemsData: mockItemsData,
        favoriteData: mockFavoriteData,
        appService: mockAppService,
      );
      mockSharedPreferences = MockSharedPreferences();

      when(
        () => mockAppService.sharedPreferences,
      ).thenReturn(mockSharedPreferences);
    });

    test('الحالة الابتدائية يجب أن تكون الافتراضية مع قيم فارغة', () {
      itemsBloc = ItemsBloc(
        itemsData: mockItemsData,
        favoriteData: mockFavoriteData,
        appService: mockAppService,
      );
      expect(itemsBloc.state, const ItemsState());
    });

    blocTest<ItemsBloc, ItemsState>(
      'emits [initial, loading, loaded] when _onStarted, _onLoadItems is added.',
      build: () {
        // محاكاة قراءة اللغة من الذاكرة
        when(() => mockSharedPreferences.getString('lang')).thenReturn('ar');
        // محاكاة نجاح جلب البيانات وإرجاعها داخل Right
        when(
          () => mockItemsData.getItems(mockCategoryId),
        ).thenAnswer((_) async => Right(mockItemsList));
        return itemsBloc;
      },
      act: (bloc) => bloc.add(
        ItemsEvent.started(categoryId: mockCategoryId, categories: categories),
      ),
      expect: () {
        final baseState = ItemsState(
          lang: 'ar',
          status: const ItemsStatus.initial(),
          categoryId: mockCategoryId,
          categories: categories,
        );
        return [
          baseState,
          baseState.copyWith(status: const ItemsStatus.loading(), items: []),
          baseState.copyWith(
            status: const ItemsStatus.loaded(),
            items: mockItemsList,
            isFavorite: mockFavorite,
          ),
        ];
      },
    );
    blocTest<ItemsBloc, ItemsState>(
      'emits [initial, loading, serverFailure] when _onStarted, _onLoadItems is added.',
      build: () {
        // محاكاة قراءة اللغة من الذاكرة
        when(() => mockSharedPreferences.getString('lang')).thenReturn('en');
        // محاكاة نجاح جلب البيانات وإرجاعها داخل Right
        when(() => mockItemsData.getItems(mockCategoryId)).thenAnswer(
          (_) async => Left(ServerFailure('خطأ في الاتصال بالسرفر')),
        );
        return itemsBloc;
      },
      act: (bloc) => bloc.add(
        ItemsEvent.started(categoryId: mockCategoryId, categories: categories),
      ),
      expect: () {
        final baseState = ItemsState(
          lang: 'en',
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.initial(),
          categoryId: mockCategoryId,
          categories: categories,
        );
        return [
          baseState,
          baseState.copyWith(status: const ItemsStatus.loading(), items: []),
          baseState.copyWith(
            status: const ItemsStatus.serverFailure('خطأ في الاتصال بالسرفر'),
          ),
        ];
      },
    );

    blocTest<ItemsBloc, ItemsState>(
      'emits [success] when _onAddFavorite is added.',
      build: () {
        when(
          () => mockFavoriteData.addFavorite(mockItemsId),
        ).thenAnswer((_) async => (Right("تمت الإضافة")));
        return itemsBloc;
      },
      act: (bloc) => bloc.add(ItemsEvent.addFavorite(mockItemsId)),
      expect: () => <ItemsState>[
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: true},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.initial(),
        ),
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: true},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.success('تمت الإضافة'),
        ),
      ],
    );

    blocTest<ItemsBloc, ItemsState>(
      'emits [success] when _onRemoveFavorite is added.',
      build: () {
        when(
          () => mockFavoriteData.removeFavorite(mockItemsId),
        ).thenAnswer((_) async => (Right("تم الحذف")));
        return itemsBloc;
      },
      act: (bloc) => bloc.add(ItemsEvent.removeFavorite(mockItemsId)),
      expect: () => <ItemsState>[
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: false},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.initial(),
        ),
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: false},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.success("تم الحذف"),
        ),
      ],
    );

    blocTest<ItemsBloc, ItemsState>(
      'emits [failure] when _onAddFavorite is added.',
      build: () {
        when(() => mockFavoriteData.addFavorite(mockItemsId)).thenAnswer(
          (_) async => (Left(ServerFailure('خطأ في الاتصال بالسرفر'))),
        );
        return itemsBloc;
      },
      act: (bloc) => bloc.add(ItemsEvent.addFavorite(mockItemsId)),
      expect: () => <ItemsState>[
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: true},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.initial(),
        ),
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: false},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.failure(
            'خطأ في الاتصال بالسرفر',
          ),
        ),
      ],
    );

    blocTest<ItemsBloc, ItemsState>(
      'emits [failure] when _onRemoveFavorite is added.',
      build: () {
        when(() => mockFavoriteData.removeFavorite(mockItemsId)).thenAnswer(
          (_) async => (Left(ServerFailure('خطأ في الاتصال بالسرفر'))),
        );
        return itemsBloc;
      },
      act: (bloc) => bloc.add(ItemsEvent.removeFavorite(mockItemsId)),
      expect: () => <ItemsState>[
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: false},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.initial(),
        ),
        ItemsState(
          isFavorite: {...mockFavorite, mockItemsId: true},
          status: const ItemsStatus.initial(),
          favoriteStatus: const FavoriteStatus.failure(
            'خطأ في الاتصال بالسرفر',
          ),
        ),
      ],
    );
  });
}
