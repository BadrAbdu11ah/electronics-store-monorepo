import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/services/location_service.dart';
import 'package:electronics_store/features/address/feature/add/bloc/address_add_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationService extends Mock implements LocationService {}

void main() {
  late AddressAddBloc addressAddBloc;
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

  group("Address Add Bloc Test", () {
    setUp(() {
      mockLocationService = MockLocationService();

      addressAddBloc = AddressAddBloc(mockLocationService);
    });

    tearDown(() {
      addressAddBloc.close();
    });
    blocTest<AddressAddBloc, AddressAddState>(
      'emits [_Loading, _Loaded] when _LoadCurrentPositionApp is added.',
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

        return addressAddBloc;
      },
      act: (bloc) => bloc.add(AddressAddEvent.loadCurrentPositionApp()),
      expect: () => <AddressAddState>[
        AddressAddState(status: const AddressAddStatus.loading()),
        AddressAddState(
          position: mockPosition,
          status: const AddressAddStatus.loaded(),
        ),
      ],
    );
    blocTest<AddressAddBloc, AddressAddState>(
      'emits [_Loading, _ServerFailure] when _LoadCurrentPositionApp is added.'
      'on isLocationServiceEnabled ThenAnswer false',
      build: () {
        when(
          () => mockLocationService.isLocationServiceEnabled(),
        ).thenAnswer((_) async => false);
        return addressAddBloc;
      },
      act: (bloc) => bloc.add(AddressAddEvent.loadCurrentPositionApp()),
      expect: () => <AddressAddState>[
        const AddressAddState(status: AddressAddStatus.loading()),
        const AddressAddState(
          status: AddressAddStatus.serverFailure('الرجاء تشغيل إعدادات الموقع'),
        ),
      ],
    );
    blocTest<AddressAddBloc, AddressAddState>(
      'emits [_Loading, _ServerFailure] when _LoadCurrentPositionApp is added. '
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

        return addressAddBloc;
      },
      act: (bloc) => bloc.add(AddressAddEvent.loadCurrentPositionApp()),
      expect: () => <AddressAddState>[
        const AddressAddState(status: AddressAddStatus.loading()),
        const AddressAddState(
          status: AddressAddStatus.serverFailure('تم رفض الوصول للموقع'),
        ),
      ],
    );
    blocTest<AddressAddBloc, AddressAddState>(
      'emits [_Loading, _ServerFailure] when _LoadCurrentPositionApp is added. '
      'on checkPermission ThenAnswer deniedForever',
      build: () {
        when(
          () => mockLocationService.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);

        when(
          () => mockLocationService.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.deniedForever);

        return addressAddBloc;
      },
      act: (bloc) => bloc.add(AddressAddEvent.loadCurrentPositionApp()),
      expect: () => <AddressAddState>[
        AddressAddState(status: AddressAddStatus.loading()),
        AddressAddState(
          status: AddressAddStatus.serverFailure(
            'صلاحيات الموقع مرفوضة بشكل دائم',
          ),
        ),
      ],
    );
  });
}
