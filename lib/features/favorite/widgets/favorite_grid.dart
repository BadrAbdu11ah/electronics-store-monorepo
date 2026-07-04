import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/features/favorite/bloc/favorite_bloc.dart';
import 'package:electronics_store/features/favorite/components/custom_card_favorite.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteGrid extends StatelessWidget {
  final FavoriteState state;
  const FavoriteGrid({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: state.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int i) {
        final item = state.items[i];
        return CustomCardFavorite(
          item: item,
          onCard: () {
            Navigator.pushNamed(
              context,
              AppRoute.itemsDetails,
              arguments: {"itemId": item.id},
            );
          },
          onFavorite: () {
            context.read<FavoriteBloc>().add(
              FavoriteEvent.removeFavorite(item.id!),
            );
          },
          lang: state.lang,
        );
      },
    );
  }
}
