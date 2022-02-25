import 'dart:convert';
import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/utils/date_formatter.dart';
import 'package:arzan/core/widgets/dialogs.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'post_detail_components/stats_block.dart';
import 'post_detail_components/vertical_divider.dart';

class PostDetailPage extends StatefulWidget {
  final PostModel model;
  const PostDetailPage({Key? key, required this.model}) : super(key: key);

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 50, bottom: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: MyBoxDecs().officialUserPage(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: context.eiSym(h: 10, v: 0),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon:
                                        const Icon(Icons.chevron_left_rounded),
                                    color: Palette.kSoftGreen,
                                    iconSize: 40),
                                const SizedBox(width: 15),
                                 Text(widget.model.title,
                                    style:
                                        const TextStyle(fontWeight: FontWeight.bold)),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark_border_rounded,
                                      color: Colors.grey),
                                  iconSize: 40,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: _size.width,
                            height: _size.height / 3,
                            margin: context.eiAll(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://arzan.info:3021/api'+jsonDecode(widget.model.images)[0]))
                            ),
                          ),
                          Container(
                            padding: context.eiSym(h: 15, v: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(CustomFormatter().formatDate(widget.model.updatedAt),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.grey)),
                                const VerticalDiv(),
                                 StatsBlock(
                                    icon: Icons.visibility_outlined,
                                    data: widget.model.viewCount.toString()),
                                const VerticalDiv(),
                                 StatsBlock(
                                    icon: Icons.share_outlined, data: widget.model.shareCount.toString()),
                                const VerticalDiv(),
                                 StatsBlock(
                                    icon: Icons.favorite_border_rounded,
                                    data: widget.model.favoriteCount.toString()),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: context.eiSym(h: 15, v: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          HtmlWidget(widget.model.content),
                          // AutoSizeText(widget.model.content,
                          //     textAlign: TextAlign.left,
                          //     style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 20),
                          
                          //  AutoSizeText(widget.model.content,
                          //     textAlign: TextAlign.left),
                        ],
                      ),
                    ),
                  ]),
            ),
            InkWell(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => banUserDialog(context)),
              child: Container(
                margin: const EdgeInsets.only(bottom: 50),
                padding: context.eiAll(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: .1, blurRadius: 5)
                    ]),
                child: Text(
                  'Nagilelik bildirmek',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
