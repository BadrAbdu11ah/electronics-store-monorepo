import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_view_event.dart';
part 'address_view_state.dart';
part 'address_view_bloc.freezed.dart';

class AddressViewBloc extends Bloc<AddressViewEvent, AddressViewState> {
  final AddressData addressData;
  AddressViewBloc(this.addressData) : super(AddressViewState()) {
    on<_Started>(_onStarted);
    on<_LoadAddresses>(_onLoadAddresses);
    on<_DeleteAddress>(_onDeleteAddress);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<AddressViewState> emit,
  ) async {
    add(_LoadAddresses());
  }

  Future<void> _onLoadAddresses(
    _LoadAddresses event,
    Emitter<AddressViewState> emit,
  ) async {
    emit(state.copyWith(status: _Loading()));

    var response = await addressData.getAddresses();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          return emit(state.copyWith(status: _NoData(failure.message)));
        }
        return emit(state.copyWith(status: _ServerFailure(failure.message)));
      },
      (addresses) =>
          emit(state.copyWith(status: _Loaded(), addresses: addresses)),
    );
  }

  Future<void> _onDeleteAddress(
    _DeleteAddress event,
    Emitter<AddressViewState> emit,
  ) async {
    final previousAddresses = state.addresses;

    // 1. حذف محلي سريع (Optimistic UI)
    final updatedAddresses = state.addresses
        .where((address) => address.id != event.id)
        .toList();
    emit(
      state.copyWith(
        addresses: updatedAddresses,
        deleteState: const _DeleteInitial(),
      ),
    );

    // 2. إرسال الطلب للسيرفر
    var response = await addressData.removeAddress(event.id);

    // 3. معالجة الرد
    response.fold(
      (failure) {
        emit(
          state.copyWith(
            // استعادة المنتجات لأن الحذف فشل بالسيرفر
            addresses: previousAddresses,
            deleteState: _DeleteFailure(failure.message),
          ),
        );
      },
      (message) {
        emit(state.copyWith(deleteState: _DeleteSuccess(message)));
      },
    );
  }
}
