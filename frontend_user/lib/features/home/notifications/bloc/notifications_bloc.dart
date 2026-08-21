import 'dart:async';

import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/data/model/notifications/notification_model.dart';
import 'package:electronics_store/features/home/notifications/data/notifications_data.dart';
import 'package:electronics_store/core/services/notification_service.dart'
    as NotificationService;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final NotificationsData notificationsData;

  StreamSubscription<void>? _orderSubscription;

  NotificationsBloc(this.notificationsData)
    : super(const NotificationsState.initial()) {
    _orderSubscription = NotificationService.onOrders.listen((event) {
      if (!isClosed) {
        add(_Started());
      }
    });
    on<_Started>(_onStarted);
  }

  @override
  Future<void> close() {
    _orderSubscription?.cancel();
    return super.close();
  }

  void _onStarted(_Started event, Emitter<NotificationsState> emit) async {
    emit(const NotificationsState.loading());

    var response = await notificationsData.getNotifications();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          return emit(NotificationsState.empty(failure.message));
        }
        return emit(NotificationsState.serverFailure(failure.message));
      },
      (notifications) =>
          emit(NotificationsState.loaded(notifications: notifications)),
    );
  }
}
