import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'address_add_event.dart';
part 'address_add_state.dart';
part 'address_add_bloc.freezed.dart';

class AddressAddBloc extends Bloc<AddressAddEvent, AddressAddState> {
  AddressAddBloc() : super(AddressAddState()) {
    on<_Started>(_onStarted);
    on<_LoadCurrentPositionApp>(_onLoadCurrentPositionApp);
  }

  Future<void> _onStarted(_Started event, Emitter<AddressAddState> emit) async {
    add(_LoadCurrentPositionApp());
  }

  Future<void> _onLoadCurrentPositionApp(
    _LoadCurrentPositionApp event,
    Emitter<AddressAddState> emit,
  ) async {
    emit(state.copyWith(status: _Loading()));

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return emit(
        state.copyWith(status: _ServerFailure("رجاء تشغيل إعدادات الموقع")),
      );
    }

    // فحص أذونات الوصول للموقع
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return emit(
          state.copyWith(status: _ServerFailure("تم رفض الوصول للموقع")),
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return emit(
        state.copyWith(
          status: _ServerFailure("صلاحيات الموقع مرفوضة بشكل دائم"),
        ),
      );
    }
    Position position = await Geolocator.getCurrentPosition();

    emit(state.copyWith(status: _Loaded(), position: position));
  }
}
