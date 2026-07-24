import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:electronics_store/features/address/feature/add_details/bloc/address_add_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAddressData extends Mock implements AddressData {}

void main() {
  late AddressAddDetailsBloc addressAddDetailsBloc;
  late MockAddressData mockAddressData;

  group("Address Add Details Bloc Test", () {
    setUp(() {
      mockAddressData = MockAddressData();
      addressAddDetailsBloc = AddressAddDetailsBloc(mockAddressData);
    });
    blocTest(
      "emits [_Loading, _Success] when _Submit is added. ",
      build: () {
        when(
          () => mockAddressData.addAddress({
            "name": 'badr',
            "city": 'riyadh',
            "street": 'king Fahd road',
            "lat": '24.7136',
            "long": '46.6753',
            "phone": '555555555',
          }),
        ).thenAnswer((_) async => const Right('تم إضافة العنوان'));
        return addressAddDetailsBloc;
      },
      act: (bloc) {
        bloc.add(
          AddressAddDetailsEvent.submit(
            name: 'badr',
            city: 'riyadh',
            street: 'king Fahd road',
            lat: '24.7136',
            long: '46.6753',
            phone: '555555555',
          ),
        );
      },
      expect: () => <AddressAddDetailsState>[
        const AddressAddDetailsState.loading(),
        const AddressAddDetailsState.success('تم إضافة العنوان'),
      ],
    );
    blocTest(
      "emits [_Loading, _ServerFailure] when _Submit is added. ",
      build: () {
        when(
          () => mockAddressData.addAddress({
            "name": 'badr',
            "city": 'riyadh',
            "street": 'king Fahd road',
            "lat": '24.7136',
            "long": '46.6753',
            "phone": '555555555',
          }),
        ).thenAnswer(
          (_) async => const Left(ServerFailure('فشل إضافة العنوان')),
        );
        return addressAddDetailsBloc;
      },
      act: (bloc) {
        bloc.add(
          AddressAddDetailsEvent.submit(
            name: 'badr',
            city: 'riyadh',
            street: 'king Fahd road',
            lat: '24.7136',
            long: '46.6753',
            phone: '555555555',
          ),
        );
      },
      expect: () => <AddressAddDetailsState>[
        const AddressAddDetailsState.loading(),
        const AddressAddDetailsState.serverFailure('فشل إضافة العنوان'),
      ],
    );
  });
}
