import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/features/items_feature/items_details/bloc/items_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTitleDecColor extends StatelessWidget {
  final String title;
  final String dec;
  final List<Map<String, dynamic>> subItems;
  const CustomTitleDecColor({
    super.key,
    required this.title,
    required this.dec,
    required this.subItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),
        Text(dec, style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 10),
        Text("Color", style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: 10),
        Row(
          children: [
            ...List.generate(subItems.length, (int index) {
              return InkWell(
                onTap: () {
                  context.read<ItemsDetailsBloc>().add(
                    ItemsDetailsEvent.selectedColor(index),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10),
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    color: subItems[index]["active"]
                        ? AppColor.themeBlackColor!
                        : Colors.white,
                    border: Border.all(
                      color: AppColor.themeBlackColor!,
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    subItems[index]["name"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: subItems[index]["active"]
                          ? Colors.white
                          : AppColor.titleColor,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
