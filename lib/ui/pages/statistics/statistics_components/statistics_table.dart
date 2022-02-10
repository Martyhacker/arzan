import 'package:arzan/core/constants/palette.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'statistics_tile.dart';
class StatisticsTable extends StatelessWidget {
  const StatisticsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Center(
      child: Stack(
        children: [
          Container(
            width: _size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            padding: EdgeInsets.symmetric(vertical: _size.height / 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AutoSizeText('Aman Amanow',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6),
                const SizedBox(height: 25),
                const StatisticTile(
                  icon: Icons.edit,
                  title: 'My Posts',
                  stats: '15/2',
                ),
                const StatisticTile(
                  icon: Icons.visibility_outlined,
                  title: 'Views',
                  stats: '165',
                ),
                const StatisticTile(
                  icon: Icons.favorite_border_rounded,
                  title: 'Likes',
                  stats: '23',
                ),
                const StatisticTile(
                  icon: Icons.share_outlined,
                  title: 'Share',
                  stats: '15',
                ),
                const StatisticTile(
                  icon: Icons.insert_emoticon_outlined,
                  title: 'Visitors',
                  stats: '198',
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset.zero)
                  ]),
              child: Container(
                height: _size.height / 8,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: .5,
                        offset: Offset.zero)
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Palette.kSoftGreen, Palette.kHardGreen]),
                ),
                child: FittedBox(
                    child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: _size.width / 3,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}