import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/home/notifications/bloc/notifications_bloc.dart';
import 'package:electronics_store/features/home/notifications/widgets/notifications_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الإشعارات")),
      body: BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox.shrink(),
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (notifications) =>
                NotificationsList(notifications: notifications),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () => context.read<NotificationsBloc>().add(
                NotificationsEvent.started(),
              ),
            ),
            empty: (message) => AppEmptyWidget(text: message),
          );
        },
      ),
    );
  }
}
