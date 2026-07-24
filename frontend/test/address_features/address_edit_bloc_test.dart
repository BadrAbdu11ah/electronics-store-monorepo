import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:electronics_store/features/address/feature/edit/bloc/address_edit_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAddressData extends Mock implements AddressData {}

void main() {
  late AddressEditBloc addressEditBloc;
  late MockAddressData mockAddressData;

  group("Address Edit Bloc Test", () {
    setUp(() {
      mockAddressData = MockAddressData();
      addressEditBloc = AddressEditBloc(mockAddressData);
    });
    blocTest(
      "emits [_Loading, _Success] when _Submit is added. ",
      build: () {
        when(
          () => mockAddressData.editAddress(5, {
            "name": 'badr',
            "city": 'riyadh',
            "street": 'king Fahd road',
            "lat": '24.7136',
            "long": '46.6753',
            "phone": '555555555',
          }),
        ).thenAnswer((_) async => const Right("تم تعديل العنوان بنجاح"));
        return addressEditBloc;
      },
      act: (bloc) {
        bloc.add(
          AddressEditEvent.submit(
            addressId: 5,
            name: 'badr',
            city: 'riyadh',
            street: 'king Fahd road',
            lat: '24.7136',
            long: '46.6753',
            phone: '555555555',
          ),
        );
      },
      expect: () => <AddressEditState>[
        const AddressEditState.loading(),
        const AddressEditState.success('تم تعديل العنوان بنجاح'),
      ],
    );
    blocTest(
      "emits [_Loading, _ServerFailure] when _Submit is added. ",
      build: () {
        when(
          () => mockAddressData.editAddress(5, {
            "name": 'badr',
            "city": 'riyadh',
            "street": 'king Fahd road',
            "lat": '24.7136',
            "long": '46.6753',
            "phone": '555555555',
          }),
        ).thenAnswer(
          (_) async => const Left(ServerFailure('فشل تعديل العنوان')),
        );
        return addressEditBloc;
      },
      act: (bloc) {
        bloc.add(
          AddressEditEvent.submit(
            addressId: 5,
            name: 'badr',
            city: 'riyadh',
            street: 'king Fahd road',
            lat: '24.7136',
            long: '46.6753',
            phone: '555555555',
          ),
        );
      },
      expect: () => <AddressEditState>[
        const AddressEditState.loading(),
        const AddressEditState.serverFailure('فشل تعديل العنوان'),
      ],
    );
  });
}
