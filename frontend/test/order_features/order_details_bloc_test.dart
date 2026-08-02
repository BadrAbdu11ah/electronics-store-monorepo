import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/model/order_details/order_details_model.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:electronics_store/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockAppService extends Mock implements AppService {}

class MockOrdersData extends Mock implements OrdersData {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late OrderDetailsBloc orderDetailsBloc;

  late MockAppService mockAppService;
  late MockOrdersData mockOrdersData;

  late MockSharedPreferences mockSharedPreferences;

  OrderModel orderModel = OrderModel(id: 2, userId: 5);
  AddressModel addressModel = AddressModel(id: 1, userId: 5);
  List<CartModel> cartItems = [CartModel(id: 0, itemId: 3)];

  group("Order Details Bloc Test", () {
    setUp(() {
      mockAppService = MockAppService();
      mockOrdersData = MockOrdersData();

      mockSharedPreferences = MockSharedPreferences();
      when(
        () => mockAppService.sharedPreferences,
      ).thenReturn(mockSharedPreferences);

      orderDetailsBloc = OrderDetailsBloc(
        appService: mockAppService,
        ordersData: mockOrdersData,
      );
    });
    tearDown(() {
      orderDetailsBloc.close();
    });

    blocTest<OrderDetailsBloc, OrderDetailsState>(
      'emits [_Loaded] when _Started is added.',
      build: () {
        when(() => mockSharedPreferences.getString('lang')).thenReturn('ar');
        when(() => mockOrdersData.getOrderDetails(orderModel.id!)).thenAnswer(
          (_) async => Right(
            OrderDetailsModel(
              cartItems: cartItems,
              address: addressModel,
              orderInfo: orderModel,
            ),
          ),
        );
        return orderDetailsBloc;
      },
      act: (bloc) =>
          bloc.add(OrderDetailsEvent.started(orderModel: orderModel)),
      expect: () => <OrderDetailsState>[
        OrderDetailsState.loading(),
        OrderDetailsState.loaded(
          lang: "ar",
          orderDetailsModel: OrderDetailsModel(
            cartItems: cartItems,
            address: addressModel,
            orderInfo: orderModel,
          ),
        ),
      ],
    );
    blocTest<OrderDetailsBloc, OrderDetailsState>(
      'emits [_ServerFailure] when _Started is added.',
      build: () {
        when(() => mockSharedPreferences.getString('lang')).thenReturn('ar');
        when(
          () => mockOrdersData.getOrderDetails(orderModel.id!),
        ).thenAnswer((_) async => Left(ServerFailure("هناك خطأ في السرفر")));
        return orderDetailsBloc;
      },
      act: (bloc) =>
          bloc.add(OrderDetailsEvent.started(orderModel: orderModel)),
      expect: () => <OrderDetailsState>[
        OrderDetailsState.loading(),
        OrderDetailsState.serverFailure("هناك خطأ في السرفر"),
      ],
    );
  });
}
