import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/home/home_page/bloc/home_page_bloc.dart';
import 'package:electronics_store/features/home/home_page/widgets/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      listenWhen: (previous, current) =>
          current.status.maybeWhen(loggedOut: () => true, orElse: () => false),
      listener: (context, state) {
        state.status.maybeWhen(
          loggedOut: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.login,
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      buildWhen: (previous, current) => current.status.maybeWhen(
        initial: () => true,
        loading: () => true,
        loaded: () => true,
        noData: (_) => true,
        serverFailure: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.status.maybeWhen(
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<HomePageBloc>().add(const HomePageEvent.started()),
          ),
          noData: (message) => AppEmptyWidget(text: message),
          orElse: () => HomeView(state: state),
        );
      },
    );
  }
}
