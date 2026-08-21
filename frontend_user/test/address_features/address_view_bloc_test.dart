import 'package:bloc_test/bloc_test.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:electronics_store/features/address/feature/view/bloc/address_view_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAdderssData extends Mock implements AddressData {}

void main() {
  late AddressViewBloc addressViewBloc;
  late MockAdderssData mockAdderssData;

  final mockAddresses = [
    AddressModel(
      id: 1,
      userId: 1,
      street: "nader",
      name: "badr",
      phone: "01004488437",
    ),
    AddressModel(
      id: 2,
      userId: 2,
      street: "cairo",
      name: "mohamed",
      phone: "01002244668",
    ),
    AddressModel(
      id: 3,
      userId: 3,
      street: "luxor",
      name: "ali",
      phone: "01002244668",
    ),
    AddressModel(
      id: 4,
      userId: 4,
      street: "dubai",
      name: "omar",
      phone: "01002244668",
    ),
  ];

  group("Load Addresses View Bloc Test:", () {
    setUp(() {
      mockAdderssData = MockAdderssData();
      addressViewBloc = AddressViewBloc(mockAdderssData);
    });

    blocTest<AddressViewBloc, AddressViewState>(
      'emits [_Loading, _Loaded] when [_Started] is added.',
      build: () {
        when(() => mockAdderssData.getAddresses()).thenAnswer((_) async {
          return Right(mockAddresses);
        });
        return addressViewBloc;
      },
      act: (bloc) => bloc.add(const AddressViewEvent.started()),
      expect: () => <AddressViewState>[
        AddressViewState(status: AddressViewStatus.loading()),
        AddressViewState(
          status: AddressViewStatus.loaded(),
          addresses: mockAddresses,
        ),
      ],
    );
    blocTest<AddressViewBloc, AddressViewState>(
      'emits [_Loading, _EmptyDataFailure] when [_Started] is added.',
      build: () {
        when(() => mockAdderssData.getAddresses()).thenAnswer((_) async {
          return Left(EmptyDataFailure("لا توجد عناوين"));
        });
        return addressViewBloc;
      },
      act: (bloc) => bloc.add(const AddressViewEvent.started()),
      expect: () => <AddressViewState>[
        AddressViewState(status: AddressViewStatus.loading()),
        AddressViewState(status: AddressViewStatus.noData("لا توجد عناوين")),
      ],
    );
    blocTest<AddressViewBloc, AddressViewState>(
      'emits [_Loading, _ServerFailure] when [_Started] is added.',
      build: () {
        when(() => mockAdderssData.getAddresses()).thenAnswer((_) async {
          return Left(ServerFailure("هناك خطأ في السرفر"));
        });
        return addressViewBloc;
      },
      act: (bloc) => bloc.add(const AddressViewEvent.started()),
      expect: () => <AddressViewState>[
        AddressViewState(status: AddressViewStatus.loading()),
        AddressViewState(
          status: AddressViewStatus.serverFailure("هناك خطأ في السرفر"),
        ),
      ],
    );
  });
}
