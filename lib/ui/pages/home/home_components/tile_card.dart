import 'dart:convert';

import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/widgets/favorite_button.dart';
import 'package:arzan/ui/pages/post_detail/post_detail_page.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final PostModel? model;
  const HomeTile({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return InkWell(
      onTap: ()=>MyRouter().route(context, PostDetailPage(model: model!)),
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
                        //decoration: mbd.tileCardInline(),
                        decoration: BoxDecoration(
                            borderRadius: defaultBorderRadius,
                            //color: Palette.kSoftGreen,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://arzan.info:3021/api' +
                                        jsonDecode(model!.images)[0]),
                                fit: BoxFit.fill)),
                        child: model != null ? Container() : const Icon(Icons.image, color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(model!.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          model!.content,
                          maxLines: 5,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Text(model!.updatedAt,
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
