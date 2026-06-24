import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:electronics_store/features/cart/data/cart_data.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockCartData extends Mock implements CartData {}

class MockAppService extends Mock implements AppService {}

void main() {
  group('ItemsDetailsBloc Tests', () {
    late ItemsDetailsBloc itemsDetailsBloc;
    late MockCartData mockCartData;
    late MockAppService mockAppService;

    final mockItemsModel = ItemsModel(itemsId: 12, itemsName: 'Test Item');
    const mockItemsId = 12;

    setUp(() {
      mockCartData = MockCartData();
      mockAppService = MockAppService();
      itemsDetailsBloc = ItemsDetailsBloc(
        cartData: mockCartData,
        appService: mockAppService,
      );
    });

    tearDown(() {
      itemsDetailsBloc.close();
    });

    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'إضافة الـ itmesModel و count في البداية عند استدعاء _onStarted',
      build: () {
        when(
          () => mockCartData.getCountCart(mockItemsId),
        ).thenAnswer((_) async => const Right(3));
        return itemsDetailsBloc;
      },
      act: (bloc) => bloc.add(ItemsDetailsEvent.started(mockItemsModel)),
      expect: () => <ItemsDetailsState>[
        ItemsDetailsState(
          status: ItemsDetailsStatus.initial(),
          itemsModel: mockItemsModel,
        ),
        ItemsDetailsState(
          status: ItemsDetailsStatus.loading(),
          itemsModel: mockItemsModel,
        ),
        ItemsDetailsState(
          status: ItemsDetailsStatus.loaded(),
          itemsModel: mockItemsModel,
          count: 3,
        ),
      ],
    );

    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'عند فشل السرفر في الـ _onStarted يتم استدعاء ServerFailure',
      build: () {
        when(
          () => mockCartData.getCountCart(mockItemsId),
        ).thenAnswer((_) async => Left(ServerFailure('خطأ في الشبكة')));
        return itemsDetailsBloc;
      },
      act: (bloc) => bloc.add(ItemsDetailsEvent.started(mockItemsModel)),
      expect: () => <ItemsDetailsState>[
        ItemsDetailsState(
          status: ItemsDetailsStatus.initial(),
          itemsModel: mockItemsModel,
        ),
        ItemsDetailsState(
          status: ItemsDetailsStatus.loading(),
          itemsModel: mockItemsModel,
        ),
        ItemsDetailsState(
          status: ItemsDetailsStatus.serverFailure('خطأ في الشبكة'),
          itemsModel: mockItemsModel,
        ),
      ],
    );

    // اختبار الإضافة الناجحة للسلة (Optimistic UI)
    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'يجب زيادة العداد لحظياً ثم إطلاق نجاح السيرفر عند استدعاء _onAddCart',
      seed: () => ItemsDetailsState(itemsModel: mockItemsModel, count: 2),
      build: () {
        when(
          () => mockCartData.addCart(mockItemsId),
        ).thenAnswer((_) async => const Right('تمت الإضافة بنجاح'));
        return itemsDetailsBloc;
      },
      act: (bloc) => bloc.add(const ItemsDetailsEvent.addCart(mockItemsId)),
      expect: () => <ItemsDetailsState>[
        ItemsDetailsState(
          itemsModel: mockItemsModel,
          count: 3,
          isUpdating: true,
        ),
        ItemsDetailsState(
          itemsModel: mockItemsModel,
          count: 3,
          isUpdating: false,
          cartStatus: const CartStatus.success('تمت الإضافة بنجاح'),
        ),
      ],
    );

    // اختبار فشل الإضافة والتراجع التلقائي
    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'يجب التراجع وإنقاص العداد وإرجاع قيمة isUpdating لـ false عند فشل السيرفر في الإضافة',
      seed: () => ItemsDetailsState(itemsModel: mockItemsModel, count: 2),
      build: () {
        when(
          () => mockCartData.addCart(mockItemsId),
        ).thenAnswer((_) async => Left(ServerFailure('خطأ في الشبكة')));
        return itemsDetailsBloc;
      },
      act: (bloc) => bloc.add(const ItemsDetailsEvent.addCart(mockItemsId)),
      expect: () => <ItemsDetailsState>[
        ItemsDetailsState(
          itemsModel: mockItemsModel,
          count: 3,
          isUpdating: true,
        ),
        // التراجع الفعلي: العداد عاد 2، والـ status مسجل فيه الفشل
        ItemsDetailsState(
          itemsModel: mockItemsModel,
          count: 2,
          isUpdating: false,
          cartStatus: const CartStatus.failure('خطأ في الشبكة'),
        ),
      ],
    );

    // اختبار الحذف الناجح من السلة
    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'يجب إنقاص العداد لحظياً ثم إطلاق نجاح السيرفر عند استدعاء _onRemoveCart',
      seed: () => ItemsDetailsState(itemsModel: mockItemsModel, count: 5),
      build: () {
        when(
          () => mockCartData.removeCart(mockItemsId),
        ).thenAnswer((_) async => const Right('تم الحذف بنجاح'));
        return itemsDetailsBloc;
      },
      act: (bloc) => bloc.add(const ItemsDetailsEvent.removeCart(mockItemsId)),
      expect: () => <ItemsDetailsState>[
        ItemsDetailsState(
          itemsModel: mockItemsModel,
          count: 4,
          isUpdating: true,
        ),
        ItemsDetailsState(
          itemsModel: mockItemsModel,
          count: 4,
          isUpdating: false,
          cartStatus: const CartStatus.success('تم الحذف بنجاح'),
        ),
      ],
    );

    // اختبار صد طلبات الحذف إذا كان العداد صفراً
    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'يجب عدم إطلاق أي حالة وعدم إرسال طلب للسيرفر إذا كان العداد أصلاً صفر',
      seed: () => ItemsDetailsState(itemsModel: mockItemsModel, count: 0),
      build: () => itemsDetailsBloc,
      act: (bloc) => bloc.add(const ItemsDetailsEvent.removeCart(mockItemsId)),
      expect: () =>
          <
            ItemsDetailsState
          >[], // مصفوفة فارغة تعني لم تتغير أي حالة (مغطى بالشرط)
      verify: (_) {
        // التأكد قطعيًا أن السيرفر لم يتم استدعاؤه مطلقاً لحفظ موارد النظام
        verifyNever(() => mockCartData.removeCart(mockItemsId));
      },
    );
    // اختبار النقر المتكرر
    blocTest<ItemsDetailsBloc, ItemsDetailsState>(
      'يجب عدم إطلاق أي حالة وعدم إرسال طلب للسيرفر isUpdating يساوي true',
      seed: () => ItemsDetailsState(
        itemsModel: mockItemsModel,
        count: 6,
        isUpdating: true,
      ),
      build: () => itemsDetailsBloc,
      act: (bloc) => bloc.add(const ItemsDetailsEvent.addCart(mockItemsId)),
      expect: () =>
          <
            ItemsDetailsState
          >[], // مصفوفة فارغة تعني لم تتغير أي حالة (مغطى بالشرط)
      verify: (_) {
        // التأكد قطعيًا أن السيرفر لم يتم استدعاؤه مطلقاً لحفظ موارد النظام
        verifyNever(() => mockCartData.removeCart(mockItemsId));
      },
    );
  });
}
