import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class HomeBigCard extends StatelessWidget {
  const HomeBigCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return Stack(
      children: [
        Container(
          height: _size.height / 2.5,
          width: _size.width,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: mbd.bigCard(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: _size.width,
                  decoration: mbd.bigCardInline(),
                  child: const Icon(Icons.image, color: Colors.white),
                ),
              ),
              Text(
                'data ' * 5,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Lorem ipsum dolor sit amet ' * 5,
                textAlign: TextAlign.left,
              ),
              const Center(
                child: Text(
                  '14. Jan 2022',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        const Positioned(top: 15, right: 15, child: FavoriteIconButton()),
      ],
    );
  }
}
