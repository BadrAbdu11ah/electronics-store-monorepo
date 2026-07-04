import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/favorite/bloc/favorite_bloc.dart';
import 'package:electronics_store/features/favorite/widgets/favorite_grid.dart';
import 'package:electronics_store/features/search/bloc/search_bloc.dart';
import 'package:electronics_store/features/search/widgets/custom_search_delegate.dart';
import 'package:electronics_store/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        // استخدام CustomScrollView بدلاً من ListView العادي لربط الـ AppBar بالـ Grid برمجياً بكفاءة عالية
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                title: AppTranslations.translate(context, AppText.findProduct),
                onOrder: () =>
                    Navigator.pushNamed(context, AppRoute.ordersPending),
                onSearch: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(
                      searchBloc: context.read<SearchBloc>(),
                    ),
                  );
                },
                isFavorite: false,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 15)),
            BlocConsumer<FavoriteBloc, FavoriteState>(
              listenWhen: (previous, current) =>
                  previous.removeStatus != current.removeStatus,
              listener: (context, state) {
                state.removeStatus.whenOrNull(
                  failure: (message) => ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(message))),
                  success: (message) => ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(message))),
                );
              },
              buildWhen: (previous, current) =>
                  previous.status != current.status ||
                  previous.items != current.items,
              builder: (context, state) {
                return state.status.maybeWhen(
                  loading: () =>
                      const SliverToBoxAdapter(child: AppLoadingWidget()),
                  serverFailure: (message) => SliverToBoxAdapter(
                    child: AppErrorWidget(
                      message: message,
                      onRetry: () => context.read<FavoriteBloc>().add(
                        const FavoriteEvent.loadFavoriteProducts(),
                      ),
                    ),
                  ),
                  noData: (message) =>
                      SliverToBoxAdapter(child: AppEmptyWidget(text: message)),
                  loaded: () => FavoriteGrid(state: state),
                  orElse: () =>
                      const SliverToBoxAdapter(child: SizedBox.shrink()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
