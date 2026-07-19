import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:electronics_store/features/check_out/bloc/check_out_bloc.dart';
import 'package:electronics_store/features/check_out/data/checkout_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAddressData extends Mock implements AddressData {}

class MockCheckoutData extends Mock implements CheckoutData {}

void main() {
  late CheckOutBloc checkOutBloc;
  late MockAddressData mockAddressData;
  late MockCheckoutData mockCheckoutData;

  List<AddressModel> mockAddresses = [AddressModel()];
  group("CheckOut BloC Test", () {
    setUp(() {
      mockAddressData = MockAddressData();
      mockCheckoutData = MockCheckoutData();

      checkOutBloc = CheckOutBloc(
        addressData: mockAddressData,
        checkoutData: mockCheckoutData,
      );
    });

    tearDown(() {
      checkOutBloc.close();
    });

    // ================= Loading address Cases =================
    // 1. اختبار تحميل العنوان بشكل صحيح
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [loaded] when Started is added.',
      build: () {
        when(
          () => mockAddressData.getAddresses(),
        ).thenAnswer((_) async => Right(mockAddresses));
        return checkOutBloc;
      },
      act: (bloc) => bloc.add(CheckOutEvent.started()),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.initial(),
          addressStatus: AddressStatus.loading(),
        ),
        CheckOutState(
          status: CheckOutStatus.loaded(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
        ),
      ],
    );
    // 2. اختبار حالة لا توجد عناوين
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [noData] when Started is added.',
      build: () {
        when(
          () => mockAddressData.getAddresses(),
        ).thenAnswer((_) async => Left(EmptyDataFailure("لا توجد عناوين")));
        return checkOutBloc;
      },
      act: (bloc) => bloc.add(CheckOutEvent.started()),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.initial(),
          addressStatus: AddressStatus.loading(),
          addresses: [],
        ),
        CheckOutState(
          status: CheckOutStatus.loaded(),
          addressStatus: AddressStatus.noData("لا توجد عناوين"),
          addresses: [],
        ),
      ],
    );
    // 3. اختبار حالة خطأ في السرفر
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [serverFailure] when Started is added.',
      build: () {
        when(
          () => mockAddressData.getAddresses(),
        ).thenAnswer((_) async => Left(ServerFailure("هناك خطأ في السرفر")));
        return checkOutBloc;
      },
      act: (bloc) => bloc.add(CheckOutEvent.started()),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.initial(),
          addressStatus: AddressStatus.loading(),
          addresses: [],
        ),
        CheckOutState(
          status: CheckOutStatus.serverFailure("هناك خطأ في السرفر"),
          addressStatus: AddressStatus.initial(),
          addresses: [],
        ),
      ],
    );

    // ================= add value =================
    // 4. اختيار طريقة الدفع
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [paymentMethod: "0"] when choosePymentMethod is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
      ),
      build: () => checkOutBloc,
      act: (bloc) => bloc.add(CheckOutEvent.choosePymentMethod("0")),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.loaded(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
        ),
      ],
    );
    // 5. اختيار نوع التوصيل
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [deliveryType: "0"] when chooseDeliveryType is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
      ),
      build: () => checkOutBloc,
      act: (bloc) => bloc.add(CheckOutEvent.chooseDeliveryType("0")),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.loaded(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
        ),
      ],
    );
    // 6. اختيار العنوان
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [addressID: "2"] when chooseShippingAddress is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
        deliveryType: "0",
      ),
      build: () => checkOutBloc,
      act: (bloc) => bloc.add(CheckOutEvent.chooseShippingAddress("2")),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.loaded(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
      ],
    );

    // ================= Checkout Cases =================
    // 7. اختبار حالة الدفع بشكل صحيح
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [success("تم تسجيل طلبك بنجاح برقم #2")] when checkout is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
        deliveryType: "0",
        addressID: "2",
      ),
      build: () {
        when(
          () => mockCheckoutData.checkout({
            'addressesid': "2",
            'type': "0",
            'pricedelivery': "20",
            'price': "2400",
            'couponsid': "3",
            'paymentmethod': '0',
          }),
        ).thenAnswer(
          (_) async => Right({
            "status": "success",
            "message": "تم تسجيل طلبك بنجاح برقم #2",
          }),
        );
        return checkOutBloc;
      },
      act: (bloc) =>
          bloc.add(CheckOutEvent.checkout(priceOrders: '2400', couponsID: '3')),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.loading(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
        CheckOutState(
          status: CheckOutStatus.success("تم تسجيل طلبك بنجاح برقم #2"),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
      ],
    );
    // 8. اختبار حالة خطأ في السرفر
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [serverFailure("هناك خطأ في السرفر")] when checkout is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
        deliveryType: "0",
        addressID: "2",
      ),
      build: () {
        when(
          () => mockCheckoutData.checkout({
            'addressesid': "2",
            'type': "0",
            'pricedelivery': "20",
            'price': "2400",
            'couponsid': "3",
            'paymentmethod': '0',
          }),
        ).thenAnswer((_) async => Left(ServerFailure("هناك خطأ في السرفر")));
        return checkOutBloc;
      },
      act: (bloc) =>
          bloc.add(CheckOutEvent.checkout(priceOrders: '2400', couponsID: '3')),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.loading(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
        CheckOutState(
          status: CheckOutStatus.serverFailure("هناك خطأ في السرفر"),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
      ],
    );
    // 9. اختبار حالة انتهاء صلاحية الكوبون
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [couponeFailure("الكوبون لم يعد صالحاً")] when checkout is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
        deliveryType: "0",
        addressID: "2",
      ),
      build: () {
        when(
          () => mockCheckoutData.checkout({
            'addressesid': "2",
            'type': "0",
            'pricedelivery': "20",
            'price': "2400",
            'couponsid': "3",
            'paymentmethod': '0',
          }),
        ).thenAnswer(
          (_) async =>
              Right({"status": "failure", "message": "الكوبون لم يعد صالحاً"}),
        );
        return checkOutBloc;
      },
      act: (bloc) =>
          bloc.add(CheckOutEvent.checkout(priceOrders: '2400', couponsID: '3')),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.loading(),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
        CheckOutState(
          status: CheckOutStatus.couponeFailure("الكوبون لم يعد صالحاً"),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
          addressID: "2",
        ),
      ],
    );
    // 10. اختبار حالة لم يتم اختيار طريقة الدفع
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [failure("يرجى اختيار طريقة الدفع")] when checkout is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
      ),
      build: () => checkOutBloc,
      act: (bloc) =>
          bloc.add(CheckOutEvent.checkout(priceOrders: '2400', couponsID: '3')),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.failure("يرجى اختيار طريقة الدفع"),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
        ),
      ],
    );
    // 11. اختبار حالة لم يتم اختيار نوع التسليم
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [failure("يرجى اختيار نوع الاستلام")] when checkout is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
      ),
      build: () => checkOutBloc,
      act: (bloc) =>
          bloc.add(CheckOutEvent.checkout(priceOrders: '2400', couponsID: '3')),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.failure("يرجى اختيار نوع الاستلام"),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
        ),
      ],
    );
    // 12. اختبار حالة لم يتم اختيار عنوان التوصيل
    blocTest<CheckOutBloc, CheckOutState>(
      'emits [failure("يرجى اختيار عنوان التوصيل")] when checkout is added.',
      seed: () => CheckOutState(
        status: CheckOutStatus.loaded(),
        addressStatus: AddressStatus.loaded(),
        addresses: mockAddresses,
        paymentMethod: "0",
        deliveryType: "0",
      ),
      build: () => checkOutBloc,
      act: (bloc) =>
          bloc.add(CheckOutEvent.checkout(priceOrders: '2400', couponsID: '3')),
      expect: () => <CheckOutState>[
        CheckOutState(
          status: CheckOutStatus.failure("يرجى اختيار عنوان التوصيل"),
          addressStatus: AddressStatus.loaded(),
          addresses: mockAddresses,
          paymentMethod: "0",
          deliveryType: "0",
        ),
      ],
    );
  });
}
