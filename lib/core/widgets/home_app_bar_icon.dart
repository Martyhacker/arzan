import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_button_decorations.dart';
import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const AppBarIcon({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.all(5),
        decoration: MyButtonDecs().appBarButtons(),
        child: Icon(icon, color: Palette.kSoftGreen),
      ),
    );
  }
}
