import 'dart:convert';

import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/ui/pages/post_detail/post_detail_page.dart';
import 'package:flutter/material.dart';

class HomeRecommendedCard extends StatelessWidget {
  final PostModel model;
  const HomeRecommendedCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return InkWell(
      onTap: ()=>MyRouter().route(context, PostDetailPage(model: model)),
      child: Stack(
        children: [
          Container(
            width: _size.width / 3,
            height: _size.height / 5,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: mbd.rcmCard(),
            child: Container(
              //decoration: mbd.rcmCardInline(),
              decoration: BoxDecoration(
                borderRadius: defaultBorderRadius,
                //color: Palette.kSoftGreen,
                image: DecorationImage(image: NetworkImage('https://arzan.info:3021/api'+jsonDecode(model.images)[0]), fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: Icon(Icons.image, color: Colors.white)),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: _size.width,
                      decoration: mbd.rcmCardLabel(),
                      child: Text(
                        model.title,
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
