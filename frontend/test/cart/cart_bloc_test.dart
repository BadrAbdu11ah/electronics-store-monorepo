import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/coupon/coupon_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/features/cart/data/cart_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockCartData extends Mock implements CartData {}

class MockAppService extends Mock implements AppService {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group("Cart Bloc Test", () {
    late CartBloc cartBloc;
    late MockCartData mockCartData;
    late MockAppService mockAppService;
    late MockSharedPreferences mockSharedPreferences;
    // تجهيز قائمة المنتجات في السلة
    final mockItemModel = [
      CartModel(
        item: ItemModel(
          id: 2,
          name: "Iphone",
          price: 2400.0,
          discount: 10,
          discountedPrice: 2175.0,
        ),
        countItems: 2,
        itemPrice: 2175.0,
        totalItemPrice: 4350.0,
      ),
      CartModel(
        item: ItemModel(
          id: 3,
          name: "Laptop",
          price: 1500.0,
          discount: 0,
          discountedPrice: 1500.0,
        ),
        countItems: 1,
        itemPrice: 1500.0,
        totalItemPrice: 1500.0,
      ),
    ];

    // الإجمالي الكلي المحسوب (4350 + 1500)
    final mockSubtotalPrice = 5850.0;
    // إجمالي عدد القطع في السلة (2 + 1)
    final mockTotalQuantity = 3;

    final mockCartResponse = CartResponseModel(
      items: mockItemModel,
      totalPrice: mockSubtotalPrice,
      totalQuantity: mockTotalQuantity,
    );

    final mockCartResponseEmpty = CartResponseModel(
      items: <CartModel>[],
      totalPrice: 0.0,
      totalQuantity: 0,
    );

    final mockShippingPrice = 20.0;
    final mockTotalAppPrice =
        mockSubtotalPrice + mockShippingPrice; // 5850 + 20 = 5870.0

    setUp(() {
      mockCartData = MockCartData();
      mockAppService = MockAppService();
      mockSharedPreferences = MockSharedPreferences();

      when(
        () => mockAppService.sharedPreferences,
      ).thenReturn(mockSharedPreferences);

      cartBloc = CartBloc(cartData: mockCartData, appService: mockAppService);
    });

    tearDown(() {
      cartBloc.close();
    });

    // ================= Loading Cases =================
    // 1. اختبار تحميل البيانات بشكل صحيح وعرض المنتجات
    blocTest<CartBloc, CartState>(
      'emits [initial, loading, loaded] when Started, LoadCart is added.',
      build: () {
        when(() => mockSharedPreferences.getString('lang')).thenReturn('ar');
        when(
          () => mockCartData.viewCart(),
        ).thenAnswer((_) async => Right(mockCartResponse));
        return cartBloc;
      },
      act: (bloc) => bloc.add(const CartEvent.started()),
      expect: () => <CartState>[
        const CartState(lang: 'ar', status: CartStatus.initial()),
        const CartState(lang: 'ar', status: CartStatus.loading()),
        CartState(
          lang: 'ar',
          status: const CartStatus.loaded(),
          cartItems: mockCartResponse.items,
          subtotalPrice: mockSubtotalPrice, // 5850.0
          totalAppPrice: mockTotalAppPrice, // 5870.0 (شامل الشحن الثابت)
          totalQuantity: mockTotalQuantity, // 3 القطع إجمالاً
        ),
      ],
    );

    // 2. اختبار حالة السلة فارغة (Empty State)
    blocTest<CartBloc, CartState>(
      'emits [initial, loading, noData] when Started, LoadCart is added.',
      build: () {
        when(() => mockSharedPreferences.getString('lang')).thenReturn('ar');
        when(
          () => mockCartData.viewCart(),
        ).thenAnswer((_) async => Right(mockCartResponseEmpty));
        return cartBloc;
      },
      act: (bloc) => bloc.add(const CartEvent.started()),
      expect: () => <CartState>[
        const CartState(lang: 'ar', status: CartStatus.initial()),
        const CartState(lang: 'ar', status: CartStatus.loading()),
        CartState(
          lang: 'ar',
          status: const CartStatus.noData("السلة فارغة حالياً"),
        ),
      ],
    );

    // 3. أن يفشل التحميل من السرفر وإطلاق serverFailure وعرض واجهة الخطأ
    blocTest<CartBloc, CartState>(
      'emits [initial, loading, noData] when Started, LoadCart is added.',
      build: () {
        when(() => mockSharedPreferences.getString('lang')).thenReturn('en');
        when(
          () => mockCartData.viewCart(),
        ).thenAnswer((_) async => Left(ServerFailure("هناك خطأ في السرفر")));
        return cartBloc;
      },
      act: (bloc) => bloc.add(const CartEvent.started()),
      expect: () => <CartState>[
        const CartState(lang: 'en', status: CartStatus.initial()),
        const CartState(lang: 'en', status: CartStatus.loading()),
        CartState(
          lang: 'en',
          status: const CartStatus.serverFailure("هناك خطأ في السرفر"),
        ),
      ],
    );

    // ================= Quantity Actions =================
    // 4. اختبار زيادة عدد المنتج (تحديث الكمية + السعر الإجمالي للمنتج والسلة)
    blocTest<CartBloc, CartState>(
      'emits [updatingItemIds add and remove, state update] when UpdateQuantity is added, delta = 1.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(
          () => mockCartData.addCart(3),
        ).thenAnswer((_) async => const Right("تم إضافة العنصر بنجاح"));
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.updateQuantity(itemId: 3, delta: 1)),
      expect: () {
        final mockUpdatedList = [
          CartModel(
            item: ItemModel(
              id: 2,
              name: "Iphone",
              price: 2400.0,
              discount: 10,
              discountedPrice: 2175.0,
            ),
            countItems: 2,
            itemPrice: 2175.0,
            totalItemPrice: 4350.0,
          ),
          CartModel(
            item: ItemModel(
              id: 3,
              name: "Laptop",
              price: 1500.0,
              discount: 0,
              discountedPrice: 1500.0,
            ),
            countItems: 2,
            itemPrice: 1500.0,
            totalItemPrice: 3000.0,
          ),
        ];
        final mockNewTotalQuantity = 4;
        final mockNewSubtotal = 7350.0;
        final mockNewTotalPrice = 7370.0; // شامل الشحن (7350 + 20)

        return <CartState>[
          // 1. الانبعاث الأول: قفل العنصر فوراً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockCartResponse.items,
            subtotalPrice: mockSubtotalPrice,
            totalAppPrice: mockTotalAppPrice,
            totalQuantity: mockCartResponse.totalQuantity,
            updatingItemIds: [3], // تمت إضافة الـ ID هنا
          ),
          // 2. الانبعاث الثاني: تحديث الحسابات والقائمة محلياً مع بقاء القفل نشطاً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity, // 4
            subtotalPrice: mockNewSubtotal, // 7350.0
            totalAppPrice: mockNewTotalPrice, // 7370.0
            updatingItemIds: [3], // القفل ما زال مستمراً
          ),
          // 3. الانبعاث الثالث: نجاح الطلب من السيرفر وفك قفل العنصر
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity,
            subtotalPrice: mockNewSubtotal,
            totalAppPrice: mockNewTotalPrice,
            updatingItemIds: const [], // تم فك القفل وإزالة الـ ID بنجاح
          ),
        ];
      },
    );

    // 5. اختبار نقص عدد المنتج (دون الوصول للصفر)
    blocTest<CartBloc, CartState>(
      'emits [updatingItemIds add and remove, state update] when UpdateQuantity is added, delta = -1.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(
          () => mockCartData.removeCart(2),
        ).thenAnswer((_) async => const Right("تم حذف العنصر بنجاح"));
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.updateQuantity(itemId: 2, delta: -1)),
      expect: () {
        final mockUpdatedList = [
          CartModel(
            item: ItemModel(
              id: 2,
              name: "Iphone",
              price: 2400.0,
              discount: 10,
              discountedPrice: 2175.0,
            ),
            countItems: 1,
            itemPrice: 2175.0,
            totalItemPrice: 2175.0,
          ),
          CartModel(
            item: ItemModel(
              id: 3,
              name: "Laptop",
              price: 1500.0,
              discount: 0,
              discountedPrice: 1500.0,
            ),
            countItems: 1,
            itemPrice: 1500.0,
            totalItemPrice: 1500.0,
          ),
        ];
        final mockNewTotalQuantity = 2;
        final mockNewSubtotal = 3675.0;
        final mockNewTotalPrice = 3695.0; // شامل الشحن (3675 + 20)

        return <CartState>[
          // 1. الانبعاث الأول: قفل العنصر فوراً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockCartResponse.items,
            subtotalPrice: mockSubtotalPrice,
            totalAppPrice: mockTotalAppPrice,
            totalQuantity: mockCartResponse.totalQuantity,
            updatingItemIds: [2], // تمت إضافة الـ ID هنا
          ),
          // 2. الانبعاث الثاني: تحديث الحسابات والقائمة محلياً مع بقاء القفل نشطاً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity, // 2
            subtotalPrice: mockNewSubtotal, // 3675.0
            totalAppPrice: mockNewTotalPrice, // 3695.0
            updatingItemIds: [2], // القفل ما زال مستمراً
          ),
          // 3. الانبعاث الثالث: نجاح الطلب من السيرفر وفك قفل العنصر
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity,
            subtotalPrice: mockNewSubtotal,
            totalAppPrice: mockNewTotalPrice,
            updatingItemIds: const [], // تم فك القفل وإزالة الـ ID بنجاح
          ),
        ];
      },
    );

    // 6. اختبار نقص عدد المنتج حتى الصفر (التأكد من حذفه تلقائياً من القائمة)
    blocTest<CartBloc, CartState>(
      'emits [updatingItemIds add and remove, state update] when UpdateQuantity is added, delta = -1, remove and delete.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(
          () => mockCartData.removeCart(3),
        ).thenAnswer((_) async => const Right("تم حذف العنصر بنجاح"));
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.updateQuantity(itemId: 3, delta: -1)),
      expect: () {
        final mockUpdatedList = [
          CartModel(
            item: ItemModel(
              id: 2,
              name: "Iphone",
              price: 2400.0,
              discount: 10,
              discountedPrice: 2175.0,
            ),
            countItems: 2,
            itemPrice: 2175.0,
            totalItemPrice: 4350.0,
          ),
        ];
        final mockNewTotalQuantity = 2;
        final mockNewSubtotal = 4350.0;
        final mockNewTotalPrice = 4370.0; // شامل الشحن (3675 + 20)

        return <CartState>[
          // 1. الانبعاث الأول: قفل العنصر فوراً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockCartResponse.items,
            subtotalPrice: mockSubtotalPrice,
            totalAppPrice: mockTotalAppPrice,
            totalQuantity: mockCartResponse.totalQuantity,
            updatingItemIds: [3], // تمت إضافة الـ ID هنا
          ),
          // 2. الانبعاث الثاني: تحديث الحسابات والقائمة محلياً مع بقاء القفل نشطاً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity, // 2
            subtotalPrice: mockNewSubtotal, // 4350.0
            totalAppPrice: mockNewTotalPrice, // 4370.0
            updatingItemIds: [3], // القفل ما زال مستمراً
          ),
          // 3. الانبعاث الثالث: نجاح الطلب من السيرفر وفك قفل العنصر
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity,
            subtotalPrice: mockNewSubtotal,
            totalAppPrice: mockNewTotalPrice,
            updatingItemIds: const [], // تم فك القفل وإزالة الـ ID بنجاح
          ),
        ];
      },
    );

    // 7. اختبار حذف المنتج نهائياً (عن طريق زر الحذف المباشر)
    blocTest<CartBloc, CartState>(
      'emits [remove, state update] when DeleteItem is added, delete.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(
          () => mockCartData.deleteCart(2),
        ).thenAnswer((_) async => const Right("تم حذف العنصر بنجاح"));
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.deleteItem(itemId: 2)),
      expect: () {
        final mockUpdatedList = [
          CartModel(
            item: ItemModel(
              id: 3,
              name: "Laptop",
              price: 1500.0,
              discount: 0,
              discountedPrice: 1500.0,
            ),
            countItems: 1,
            itemPrice: 1500.0,
            totalItemPrice: 1500.0,
          ),
        ];
        final mockNewTotalQuantity = 1;
        final mockNewSubtotal = 1500.0;
        final mockNewTotalPrice = 1520.0; // شامل الشحن (1500 + 20)

        return <CartState>[
          // 1. الانبعاث الأول: قفل العنصر فوراً
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity, // 1
            subtotalPrice: mockNewSubtotal, // 1500.0
            totalAppPrice: mockNewTotalPrice, // 1520.0
            updatingItemIds: [2], // القفل ما زال مستمراً
          ),
          // 2. الانبعاث الثاني: نجاح الطلب من السيرفر وفك قفل العنصر
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            cartItems: mockUpdatedList,
            totalQuantity: mockNewTotalQuantity,
            subtotalPrice: mockNewSubtotal,
            totalAppPrice: mockNewTotalPrice,
            updatingItemIds: const [], // تم فك القفل وإزالة الـ ID بنجاح
          ),
        ];
      },
    );

    // ================= Coupon Cases =================
    // 9. اختبار تطبيق كوبون بشكل صحيح (حساب الخصم وتحديث السعر النهائي)
    blocTest<CartBloc, CartState>(
      'emits [couponSuccess] when ApplyCoupon is added.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        couponStatus: const CouponStatus.initial(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(() => mockCartData.checkCoupon("badr")).thenAnswer(
          (_) async => Right(
            CouponModel(
              id: 1,
              name: "badr",
              discount: 15,
              // إعداد تاريخ مستقبلي (بعد يومين من الآن) لضمان أن الكوبون غير منتهي الصلاحية
              expiredAt: DateTime.now()
                  .add(const Duration(days: 2))
                  .toIso8601String(),
            ),
          ),
        );
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.applyCoupon(couponName: 'badr')),
      expect: () {
        // 5,850.0 * 0.15 = 877.5
        // 5,850.0 - 877.5 = 4,972.5
        // 4,972.5 + 20 = 4,992.5
        final mockNewTotalPrice = 4992.5;

        return <CartState>[
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            couponStatus: CouponStatus.couponSuccess(
              "تم تطبيق خصم الكوبون بنجاح بـ ${15}%",
            ),
            cartItems: mockCartResponse.items,
            totalQuantity: mockCartResponse.totalQuantity, // 3
            discountPercentage: 15,
            subtotalPrice: mockSubtotalPrice, // 5850.0
            totalAppPrice: mockNewTotalPrice, // 4992.5
            couponId: "1",
            couponName: "badr",
          ),
        ];
      },
    );

    // 10. اختبار تطبيق الكوبون ولا يكون صحيحا (كوبون غير موجود)
    blocTest<CartBloc, CartState>(
      'emits [couponFailure] with expired message when ApplyCoupon is added.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        couponStatus: const CouponStatus.initial(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(() => mockCartData.checkCoupon("badr")).thenAnswer(
          (_) async => Left(
            ServerFailure("الكوبون غير صالح، انتهت صلاحيته، أو نفدت كميته"),
          ),
        );
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.applyCoupon(couponName: 'badr')),
      expect: () {
        // 5850.0 + 20 = 5870.0
        final mockNewTotalPrice = 5870.0;

        return <CartState>[
          CartState(
            lang: 'ar',
            status: const CartStatus.loaded(),
            couponStatus: const CouponStatus.couponFailure(
              "الكوبون غير صالح، انتهت صلاحيته، أو نفدت كميته",
            ),
            cartItems: mockCartResponse.items,
            totalQuantity: mockCartResponse.totalQuantity, // 3
            subtotalPrice: mockSubtotalPrice, // 5850.0
            totalAppPrice: mockNewTotalPrice, // 5870.0
          ),
        ];
      },
    );

    // 11. اختبار انتهاء صلاحية الكوبون
    blocTest<CartBloc, CartState>(
      'emits [couponFailure] with expired message when ApplyCoupon is added with an expired coupon.',
      seed: () => CartState(
        lang: 'ar',
        status: const CartStatus.loaded(),
        couponStatus: const CouponStatus.initial(),
        cartItems: mockCartResponse.items,
        subtotalPrice: mockSubtotalPrice, // 5850.0
        totalAppPrice: mockTotalAppPrice, // 5870.0
        totalQuantity: mockCartResponse.totalQuantity, // 3 قطع إجمالاً
      ),
      build: () {
        when(() => mockCartData.checkCoupon("badr")).thenAnswer(
          (_) async => Right(
            CouponModel(
              id: 1,
              name: "badr",
              discount: 15,
              // إعداد تاريخ في الماضي (قبل يومين من الآن) لضمان أن الكوبون منتهي الصلاحية
              expiredAt: DateTime.now()
                  .subtract(const Duration(days: 2))
                  .toIso8601String(),
            ),
          ),
        );
        return cartBloc;
      },
      act: (bloc) => bloc.add(CartEvent.applyCoupon(couponName: 'badr')),
      expect: () => <CartState>[
        CartState(
          lang: 'ar',
          status: const CartStatus.loaded(),
          couponStatus: const CouponStatus.couponFailure(
            "عذراً، هذا الكوبون منتهي الصلاحية",
          ),
          cartItems: mockCartResponse.items,
          totalQuantity: mockCartResponse.totalQuantity, // 3
          subtotalPrice: mockSubtotalPrice, // 5850.0
          totalAppPrice: mockTotalAppPrice, // 5870.0
        ),
      ],
    );
  });
}
