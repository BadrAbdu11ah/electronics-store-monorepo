import 'package:flutter/material.dart';

class CardHomeView extends StatelessWidget {
  final void Function() onTap;
  final String imageName;
  final String title;
  const CardHomeView({
    super.key,
    required this.onTap,
    required this.imageName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageName, width: 70),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
