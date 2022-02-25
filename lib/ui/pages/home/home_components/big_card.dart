import 'dart:convert';

import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/utils/date_formatter.dart';
import 'package:arzan/core/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class HomeBigCard extends StatelessWidget {
  final PostModel? model;
  const HomeBigCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return InkWell(
      onTap: (){},
      child: Stack(
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
                    //decoration: mbd.bigCardInline(),
                    decoration: BoxDecoration(
                            borderRadius: defaultBorderRadius,
                            //color: Palette.kSoftGreen,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://arzan.info:3021/api' +
                                        jsonDecode(model!.images)[0]),
                                fit: BoxFit.fill)),
                    child: model != null ? Container(): const Icon(Icons.image, color: Colors.white),
                  ),
                ),
                Text(
                  model!.title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  model!.content,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                 Center(
                  child: Text(
                    CustomFormatter().formatDate(model!.updatedAt),
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          const Positioned(top: 15, right: 15, child: FavoriteIconButton()),
        ],
      ),
    );
  }
}
