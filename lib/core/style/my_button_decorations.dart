import 'package:flutter/material.dart';

var defaultBorderRadius = BorderRadius.circular(10);
var lightCardColor = Colors.white;

class MyButtonDecs {
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
  registerButton(Color color) => BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      );
  appBarButtons() => BoxDecoration(
      color: Colors.white,
      borderRadius: defaultBorderRadius,
      boxShadow: boxShadow());
  viewAllButton() => BoxDecoration(
      color: Colors.white,
      borderRadius: defaultBorderRadius,
      boxShadow: defaultShadow());
}
