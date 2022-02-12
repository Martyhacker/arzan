import 'package:flutter/material.dart';
class StatsBlock extends StatelessWidget {
  final IconData icon;
  final String data;
  const StatsBlock({Key? key, required this.icon, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        Text(
          data,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}