import 'package:flutter/material.dart';

class MyViewBuilder {
  Widget homeGridView(Widget widget) {
    return GridView.builder(
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.55),
        itemBuilder: (context, index) => widget);
  }

  Widget homeTileView(Widget widget) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(10, (index) => widget),
    );
  }

  Widget buildGridView(Widget widget) {
    return GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.55),
        itemBuilder: (context, index) => widget);
  }

  Widget buildTileView(Widget widget) {
    return ListView(
      children: List.generate(10, (index) => widget),
    );
  }
}
