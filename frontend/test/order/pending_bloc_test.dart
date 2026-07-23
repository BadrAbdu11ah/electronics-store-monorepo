import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:electronics_store/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockOrdersData extends Mock implements OrdersData {}

void main() {
  late PendingBloc pendingBloc;
  late MockOrdersData mockOrdersData;

  final List<OrderModel> orders = [OrderModel(), OrderModel()];

  setUp(() {
    mockOrdersData = MockOrdersData();
    pendingBloc = PendingBloc(mockOrdersData);
  });

  blocTest<PendingBloc, PendingState>(
    'emits [loaded] when fetchOrders is added.',
    build: () {
      when(
        () => mockOrdersData.getPendingOrders(),
      ).thenAnswer((_) async => Right(orders));
      return pendingBloc;
    },
    act: (bloc) => bloc.add(PendingEvent.fetchOrders()),
    expect: () => <PendingState>[
      PendingState.loading(),
      PendingState.loaded(orders: orders),
    ],
  );
  blocTest<PendingBloc, PendingState>(
    'emits [serverFailure] when fetchOrders is added.',
    build: () {
      when(
        () => mockOrdersData.getPendingOrders(),
      ).thenAnswer((_) async => Left(ServerFailure("هناك خطأ في السرفر")));
      return pendingBloc;
    },
    act: (bloc) => bloc.add(PendingEvent.fetchOrders()),
    expect: () => <PendingState>[
      PendingState.loading(),
      PendingState.serverFailure("هناك خطأ في السرفر"),
    ],
  );
}
