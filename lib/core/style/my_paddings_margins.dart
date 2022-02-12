import 'package:flutter/material.dart';

extension EIExtension on BuildContext {
  eiAll(double val) => EdgeInsets.all(val);
  eiSym({required double h,required double v}) =>EdgeInsets.symmetric(horizontal: h, vertical: v);
  mTermsPage() => EdgeInsets.only(
      left: 10,
      right: 10,
      top: MediaQuery.of(this).size.height / 4,
      bottom: 50);
  pTermsPage() =>
      EdgeInsets.only(top: MediaQuery.of(this).size.height / 10, left: 10, right: 10, bottom: 10);
}
