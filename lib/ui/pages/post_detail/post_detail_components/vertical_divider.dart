import 'package:flutter/material.dart';
class VerticalDiv extends StatelessWidget {
  const VerticalDiv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1,
        height: 25,
        decoration: const BoxDecoration(color: Colors.grey));
  }
}