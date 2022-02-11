import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';
class UpperCircleLogo extends StatelessWidget {
  final Widget child;
  const UpperCircleLogo({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height / 8,
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: kLightCardColor, shape: BoxShape.circle),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Palette.kSoftGreen, Palette.kHardGreen])),
          child: child),
    );
  }
}