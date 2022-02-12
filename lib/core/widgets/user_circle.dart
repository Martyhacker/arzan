import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';
class UserCircle extends StatelessWidget {
  const UserCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.kSoftGreen, Palette.kHardGreen]),
      ),
      child: LayoutBuilder(builder: (context, constraint) {
        return Icon(
          Icons.account_circle_outlined,
          color: Colors.white,
          size: constraint.biggest.width,
        );
      }),
    );
  }
}