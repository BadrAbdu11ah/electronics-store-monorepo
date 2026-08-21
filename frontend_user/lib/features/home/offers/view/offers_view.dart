import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/home/offers/bloc/offers_bloc.dart';
import 'package:electronics_store/features/home/offers/widgets/offers_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OffersBloc, OffersState>(
        builder: (context, state) {
          return state.status.when(
            initial: () => SizedBox.shrink(),
            loading: () => AppLoadingWidget(),
            empty: (message) => AppEmptyWidget(text: message),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () =>
                  context.read<OffersBloc>().add(OffersEvent.loadOffers()),
            ),
            loaded: (items, lang) => OffersGrid(items: items, lang: lang),
          );
        },
      ),
    );
  }
}
