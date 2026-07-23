import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/core/services/location_service.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:electronics_store/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockAppService extends Mock implements AppService {}

class MockOrdersData extends Mock implements OrdersData {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockLocationService extends Mock implements LocationService {}

void main() {
  late OrderDetailsBloc orderDetailsBloc;

  late MockAppService mockAppService;
  late MockOrdersData mockOrdersData;

  late MockSharedPreferences mockSharedPreferences;
  late MockLocationService mockLocationService;

  Position mockPosition = Position(
    longitude: 1.2,
    latitude: 5.2,
    timestamp: DateTime(2015),
    accuracy: 4.5,
    altitude: 85.2,
    altitudeAccuracy: 4.5,
    heading: 8.4,
    headingAccuracy: 4.5,
    speed: 7.5,
    speedAccuracy: 8.6,
  );

  OrderModel orderModel = OrderModel(id: 2, userId: 5);
  AddressModel addressModel = AddressModel(id: 1, userId: 5);
  List<CartModel> cartItems = [CartModel(id: 0, itemId: 3)];

  group("Order Details Bloc Test", () {
    setUp(() {
      mockAppService = MockAppService();
      mockOrdersData = MockOrdersData();

      mockSharedPreferences = MockSharedPreferences();
      mockLocationService = MockLocationService();
      when(
        () => mockAppService.sharedPreferences,
      ).thenReturn(mockSharedPreferences);

      orderDetailsBloc = OrderDetailsBloc(
        appService: mockAppService,
        ordersData: mockOrdersData,
        locationService: mockLocationService,
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
          (_) async => Right({
            'status': 'success',
            'cartItems': cartItems,
            'address': addressModel,
            'order_info': orderModel,
          }),
        );
        return orderDetailsBloc;
      },
      act: (bloc) =>
          bloc.add(OrderDetailsEvent.started(orderModel: orderModel)),
      expect: () => <OrderDetailsState>[
        OrderDetailsState(lang: "ar", status: OrderDetailsStatus.loading()),
        OrderDetailsState(
          lang: "ar",
          cartItems: cartItems,
          addressModel: addressModel,
          order: orderModel,
          status: OrderDetailsStatus.loaded(),
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
        OrderDetailsState(lang: "ar", status: OrderDetailsStatus.loading()),
        OrderDetailsState(
          lang: "ar",
          status: OrderDetailsStatus.serverFailure("هناك خطأ في السرفر"),
        ),
      ],
    );
    blocTest<OrderDetailsBloc, OrderDetailsState>(
      'emits [_LocationLoaded] when _GetCurrentPositionApp is added.',
      build: () {
        when(
          () => mockLocationService.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);

        when(
          () => mockLocationService.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.always);

        when(
          () => mockLocationService.getCurrentPosition(),
        ).thenAnswer((_) async => mockPosition);

        return orderDetailsBloc;
      },
      act: (bloc) => bloc.add(OrderDetailsEvent.getCurrentPositionApp()),
      expect: () => <OrderDetailsState>[
        OrderDetailsState(locationStatus: LocationStatus.loading()),
        OrderDetailsState(
          position: mockPosition,
          locationStatus: LocationStatus.loaded(),
        ),
      ],
    );
    blocTest<OrderDetailsBloc, OrderDetailsState>(
      'emits [_LocationServerFailure] when _GetCurrentPositionApp is added.'
      'on isLocationServiceEnabled ThenAnswer false',
      build: () {
        when(
          () => mockLocationService.isLocationServiceEnabled(),
        ).thenAnswer((_) async => false);
        return orderDetailsBloc;
      },
      act: (bloc) => bloc.add(OrderDetailsEvent.getCurrentPositionApp()),
      expect: () => <OrderDetailsState>[
        OrderDetailsState(locationStatus: LocationStatus.loading()),
        OrderDetailsState(
          locationStatus: LocationStatus.serverFailure(
            'الرجاء تشغيل إعدادات الموقع',
          ),
        ),
      ],
    );
    blocTest<OrderDetailsBloc, OrderDetailsState>(
      'emits [_LocationServerFailure] when _GetCurrentPositionApp is added. '
      'on requestPermission ThenAnswer denied',
      build: () {
        when(
          () => mockLocationService.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);

        when(
          () => mockLocationService.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.denied);

        when(
          () => mockLocationService.requestPermission(),
        ).thenAnswer((_) async => LocationPermission.denied);

        return orderDetailsBloc;
      },
      act: (bloc) => bloc.add(OrderDetailsEvent.getCurrentPositionApp()),
      expect: () => <OrderDetailsState>[
        OrderDetailsState(locationStatus: LocationStatus.loading()),
        OrderDetailsState(
          locationStatus: LocationStatus.serverFailure('تم رفض الوصول للموقع'),
        ),
      ],
    );
    blocTest<OrderDetailsBloc, OrderDetailsState>(
      'emits [_LocationServerFailure] when _GetCurrentPositionApp is added. '
      'on checkPermission ThenAnswer deniedForever',
      build: () {
        when(
          () => mockLocationService.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);

        when(
          () => mockLocationService.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.deniedForever);

        return orderDetailsBloc;
      },
      act: (bloc) => bloc.add(OrderDetailsEvent.getCurrentPositionApp()),
      expect: () => <OrderDetailsState>[
        OrderDetailsState(locationStatus: LocationStatus.loading()),
        OrderDetailsState(
          locationStatus: LocationStatus.serverFailure(
            'صلاحيات الموقع مرفوضة بشكل دائم',
          ),
        ),
      ],
    );
  });
}
