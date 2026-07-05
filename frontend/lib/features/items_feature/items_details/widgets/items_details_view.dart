import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:electronics_store/features/items_feature/items_details/components/custom_title_dec_color.dart';
import 'package:electronics_store/features/items_feature/items_details/components/items_details_image.dart';
import 'package:electronics_store/features/items_feature/items_details/components/price_and_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsDetailsView extends StatelessWidget {
  final ItemsDetailsState state;
  const ItemsDetailsView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          ItemsDetailsImage(
            tagHero: "${state.itemModel!.id}",
            imageLink: "${state.itemModel!.image}",
          ),
          PriceAndCount(
            onAdd: () {
              context.read<ItemsDetailsBloc>().add(
                ItemsDetailsEvent.addCart(state.itemModel!.id!),
              );
            },
            onRemove: () {
              context.read<ItemsDetailsBloc>().add(
                ItemsDetailsEvent.removeCart(state.itemModel!.id!),
              );
            },
            count: '${state.count}',
            price: '${state.itemModel!.price}',
            discountedPrice: '${state.itemModel!.discountedPrice}',
            discount: state.itemModel!.discount ?? 0,
          ),
          CustomTitleDecColor(
            title: translateDatabase(
              state.itemModel!.name!,
              state.itemModel!.nameAr!,
            ),
            dec:
                "${state.itemModel!.desc} ${state.itemModel!.desc} ${state.itemModel!.desc} ${state.itemModel!.desc} ${state.itemModel!.desc} ",
            subItems: state.subItems,
          ),
        ],
      ),
    );
  }
}
