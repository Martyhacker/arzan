import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final AppBar appBar;
  final Widget? back;
  const DefaultAppBar(
      {required this.titleText, required this.appBar, this.back, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.chevron_left_rounded,
            color: Palette.kSoftGreen, size: 40),
        onPressed: () {
          back == null
              ? Navigator.of(context).pop()
              : MyRouter().change(context, back!);
        },
      ),
      title: Text(
        titleText,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
