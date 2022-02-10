import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_button_decorations.dart';
import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: MyButtonDecs().viewAllButton(),
      child: Text(
        'View all',
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Palette.kSoftGreen, fontWeight: FontWeight.bold),
      ),
    );
  }
}
