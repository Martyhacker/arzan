import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final VoidCallback onTap;
  const HomeTile({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
              width: _size.width,
              height: _size.height / 5,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: mbd.tileCard(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        height: double.infinity,
                        decoration: mbd.tileCardInline(),
                        child: const Icon(Icons.image, color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Lorem ipsum dolor sit amet ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          'Lorem ipsum dolor sit amet ' * 5,
                          maxLines: 5,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Text('14 Jan. 2022',
                                style: Theme.of(context).textTheme.caption)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
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
