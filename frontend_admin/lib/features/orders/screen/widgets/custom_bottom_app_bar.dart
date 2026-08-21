import 'package:frontend_admin/features/orders/screen/widgets/custom_bottom_icon.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final String lang;
  final int listPageLength;
  final int currentPage;

  final List<Map<String, dynamic>> home;
  final Function(int) onTap;

  const CustomBottomAppBar({
    super.key,
    required this.listPageLength,
    required this.currentPage,
    required this.onTap,
    required this.lang,
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[300],
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(listPageLength, (index) {
            return CustomBottomIcon(
              onIcon: () => onTap(index),
              icon: currentPage == index
                  ? home[index]["iconActive"]
                  : home[index]["iconNotActive"],
              textIcon: lang == "ar"
                  ? home[index]["titleBottomAr"]
                  : home[index]["titleBottomEn"],
              active: currentPage == index ? true : false,
            );
          }),
        ],
      ),
    );
  }
}
