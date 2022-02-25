import 'dart:convert';

import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/utils/date_formatter.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/widgets/favorite_button.dart';
import 'package:arzan/ui/pages/post_detail/post_detail_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class HomeBlock extends StatelessWidget {
  final PostModel? model;
  const HomeBlock({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyBoxDecs mbd = MyBoxDecs();
    return InkWell(
      onTap: () => MyRouter().route(context, PostDetailPage(model: model!)),
      child: Container(
        width: _size.width / 3,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: mbd.blockCard(),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: _size.height / 8,
                    decoration: BoxDecoration(
                        borderRadius: defaultBorderRadius,
                        //color: Palette.kSoftGreen,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://arzan.info:3021/api' +
                                jsonDecode(model!.images)[0],
                                
                          ),
                        )),
                    child: model != null
                        ? Container()
                        : const Icon(Icons.image, color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Text(
                          model!.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        model!.content,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Expanded(
                        child: Text(
                            CustomFormatter().formatDate(model!.updatedAt),
                            style: Theme.of(context).textTheme.caption!),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Positioned(
              top: 5,
              right: 5,
              child: FavoriteIconButton(),
            )
          ],
        ),
      ),
    );
  }
}
