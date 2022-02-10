import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:flutter/material.dart';

class HomeRecommendedCard extends StatelessWidget {
  const HomeRecommendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return Stack(
      children: [
        Container(
          width: _size.width / 3,
          height: _size.height / 5,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: mbd.rcmCard(),
          child: Container(
            decoration: mbd.rcmCardInline(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Icon(Icons.image, color: Colors.white)),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: _size.width,
                    decoration: mbd.rcmCardLabel(),
                    child: const Text(
                      'Lorem ipsum',
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
