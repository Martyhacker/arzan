import 'package:arzan/core/constants/palette.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class HomeViewLabel extends StatelessWidget {
  const HomeViewLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const[
          AutoSizeText(
            'Recommended',
            minFontSize: 18,
          ),
          AutoSizeText('145', minFontSize: 18),
        ]),
        Divider(
          thickness: 3,
          color: Palette.kSoftGreen,
        )
      ],
    );
  }
}