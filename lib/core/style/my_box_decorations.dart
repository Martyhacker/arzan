import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';

var defaultBorderRadius = BorderRadius.circular(10);
var lightCardColor = Colors.white;

class MyBoxDecs {
  boxShadow() => const [
        BoxShadow(
            blurRadius: 1,
            offset: Offset.zero,
            spreadRadius: 1,
            color: Colors.grey)
      ];
  defaultShadow() => const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 2,
          spreadRadius: .5,
          offset: Offset.zero,
        )
      ];
  gradientBack() => BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.kSoftGreen, Palette.kHardGreen]),
      );

  rcmCard() => BoxDecoration(
      color: lightCardColor,
      borderRadius: defaultBorderRadius,
      boxShadow: boxShadow());
  rcmCardInline() => BoxDecoration(
        borderRadius: defaultBorderRadius,
        color: Palette.kSoftGreen,
      );
  rcmCardLabel() => const BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ));
  bigCard() => BoxDecoration(
      color: lightCardColor,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
  bigCardInline() => BoxDecoration(
      color: Palette.kSoftGreen,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
  tileCard() => BoxDecoration(
      color: lightCardColor,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
  tileCardInline() => BoxDecoration(
      color: Palette.kSoftGreen,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
  blockCard() => BoxDecoration(
      color: lightCardColor,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
  notificationsPage() => BoxDecoration(
      color: lightCardColor,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());

  registerPage() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      );
  registerPage2() => BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: .5,
              offset: Offset.zero)
        ],
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.kSoftGreen, Palette.kHardGreen]),
      );
}
