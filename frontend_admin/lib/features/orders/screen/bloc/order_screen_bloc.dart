import 'package:frontend_admin/core/services/app_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_screen_event.dart';
part 'order_screen_state.dart';
part 'order_screen_bloc.freezed.dart';

class OrderScreenBloc extends Bloc<OrderScreenEvent, OrderScreenState> {
  final AppService appService;
  OrderScreenBloc({required this.appService})
    : super(const OrderScreenState(status: OrderScreenStatus.initial())) {
    on<_PageChanged>(_onPageChanged);
    on<_Started>(_onStarted);
  }

  void _onStarted(_Started event, Emitter<OrderScreenState> emit) async {
    final String? lang = appService.sharedPreferences.getString('lang');
    if (lang != null) {
      emit(state.copyWith(lang: lang));
    }
  }

  void _onPageChanged(
    _PageChanged event,
    Emitter<OrderScreenState> emit,
  ) async {
    emit(state.copyWith(currentPage: event.page));
  }
}
