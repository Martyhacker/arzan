import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class HomeBlock extends StatelessWidget {
  const HomeBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return InkWell(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            width: _size.width / 3,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: mbd.blockCard(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  height: _size.height / 8,
                  decoration: BoxDecoration(
                      color: Palette.kSoftGreen,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.image, color: Colors.white),
                ),
                Column(
                  children: [
                    const Text(
                      'Lorem ipsum dolor sit amet',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet ' * 5,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('14 Jan. 2022',
                        style: Theme.of(context).textTheme.caption!)
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            top: 15,
            right: 15,
            child: FavoriteIconButton(),
          )
        ],
      ),
    );
  }
}
