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
  rcmCardLabel() =>  BoxDecoration(
      color: Colors.grey.withOpacity(.8),
      borderRadius: const BorderRadius.only(
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
  homePageCity() => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey),
      boxShadow: defaultShadow());
  notificationsPage() => BoxDecoration(
      color: lightCardColor,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
  notificationDetailImage() => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: defaultShadow());
  officialUserPage() => const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
          ),
          boxShadow:  [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: .1,
                blurRadius: 5,
                offset: Offset(0, 5))
          ]);
  officialUserDetailAvatar() => BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Palette.kSoftGreen, Palette.kHardGreen]));
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
