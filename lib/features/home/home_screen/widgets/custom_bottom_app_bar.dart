import 'package:electronics_store/features/home/home_screen/widgets/custom_bottom_icon.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  final int listPageLength;
  final int currentPage;
  final Function(int) onTap;

  const CustomBottomAppBar({
    super.key,
    required this.listPageLength,
    required this.currentPage,
    required this.onTap,
  });

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  // Navigation Assets
  List<String> titleBottomEn = ["Home", "Favorite", "Profile", "Settings"];
  List<String> titleBottomAr = ["الرئيسي", "المفضلة", "صفحتي", "إعدادات"];

  List<IconData> iconNotActive = [
    Icons.home_outlined,
    Icons.star_border_outlined,
    Icons.person_2_outlined,
    Icons.settings_outlined,
  ];
  List<IconData> iconActive = [
    Icons.home,
    Icons.star,
    Icons.person_2,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[300],
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        children: [
          ...List.generate(widget.listPageLength + 1, (index) {
            int i = index > 2 ? index - 1 : index;
            return index == 2
                ? Spacer()
                : CustomBottomIcon(
                    onIcon: () {
                      widget.onTap(i);
                    },
                    icon: widget.currentPage == i
                        ? iconActive[i]
                        : iconNotActive[i],
                    textIcon: titleBottomEn[i],
                    active: widget.currentPage == i ? true : false,
                  );
          }),
        ],
      ),
    );
  }
}
