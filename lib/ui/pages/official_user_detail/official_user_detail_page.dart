import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/dialogs.dart';
import 'package:arzan/core/widgets/subscribe_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfficialUserDetail extends StatefulWidget {
  const OfficialUserDetail({Key? key}) : super(key: key);

  @override
  _OfficialUserDetailState createState() => _OfficialUserDetailState();
}

class _OfficialUserDetailState extends State<OfficialUserDetail> {
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: .1,
                                blurRadius: 5,
                                offset: Offset(0, 5))
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon:
                                        const Icon(Icons.chevron_left_rounded),
                                    color: Palette.kSoftGreen,
                                    iconSize: 40),
                                Container(
                                  width: _size.width / 8,
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Palette.kSoftGreen,
                                            Palette.kHardGreen
                                          ])),
                                  child: LayoutBuilder(
                                      builder: (context, constraint) {
                                    return Icon(
                                      Icons.account_circle_outlined,
                                      color: Colors.white,
                                      size: constraint.biggest.width,
                                    );
                                  }),
                                ),
                                const SizedBox(width: 15),
                                const Text('Name Surname',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                const Spacer(),
                                const SubscribeButton()
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: _size.width,
                                height: _size.height / 3,
                                margin: const EdgeInsets.all(10),
                                color: Palette.kSoftGreen,
                                child: const Icon(Icons.image,
                                    color: Colors.white),
                              ),
                              Positioned(
                                top: 20,
                                right: 20,
                                child: Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Icon(
                                    Icons.bookmark_outline_rounded,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('23 hrs ago',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.grey)),
                                const VerticalDiv(),
                                const StatsBlock(
                                    icon: Icons.visibility_outlined,
                                    data: '154'),
                                const VerticalDiv(),
                                const StatsBlock(
                                    icon: Icons.share_outlined, data: '26'),
                                const VerticalDiv(),
                                const StatsBlock(
                                    icon: Icons.favorite_border_rounded,
                                    data: '62'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          AutoSizeText('Lorem ipsum dolor sit amet',
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1),
                          const SizedBox(height: 20),
                          const AutoSizeText(sampleRichText,
                              textAlign: TextAlign.left),
                        ],
                      ),
                    ),
                  ]),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context, builder: (context) => banUserDialog(context));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 50),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: .1, blurRadius: 5)
                    ]),
                child: const Text('Nagilelik bildirmek',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalDiv extends StatelessWidget {
  const VerticalDiv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1,
        height: 25,
        decoration: const BoxDecoration(color: Colors.grey));
  }
}

class StatsBlock extends StatelessWidget {
  final IconData icon;
  final String data;
  const StatsBlock({Key? key, required this.icon, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        Text(
          data,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
