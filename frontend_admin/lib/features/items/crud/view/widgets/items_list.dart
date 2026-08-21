import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/model/item/item_model.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/items/crud/view/bloc/view_items_bloc.dart';

class ItemsList extends StatelessWidget {
  final List<ItemModel> items;
  const ItemsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10), // الحواف الخارجية
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              AppRoute.editItem,
              arguments: item,
            ),
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AnimatedContainer(
                      margin: EdgeInsets.only(right: 5), // 5 إلى اليمين
                      duration: Duration(milliseconds: 900), // زمن التحريك
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Hero(
                        tag: "${item.id}",
                        child: CachedNetworkImage(
                          imageUrl: item.image!,
                          fit: BoxFit.contain,
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.broken_image),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text("${item.name}"),
                      subtitle: Text(
                        "${item.category!.name}",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () => AppDialogs.dialogDelete(
                              context: context,
                              title: AppTranslations.translate(
                                context,
                                AppText.deleteItem,
                              ),
                              content: AppTranslations.translate(
                                context,
                                AppText.areYouSureYouWantToDeleteThisItem,
                              ),
                              onConfirm: () {
                                context.read<ViewItemsBloc>().add(
                                  ViewItemsEvent.deleteitem(item.id!),
                                );
                                Navigator.pop(context);
                              },
                            ),
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
