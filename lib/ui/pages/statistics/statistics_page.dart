import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/style/my_shape_decoration.dart';
import 'package:arzan/ui/pages/statistics/statistics_components/statistics_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'statistics_components/statistics_table.dart';

int currentTab = 0;

class MyStatisticsPage extends StatefulWidget {
  const MyStatisticsPage({Key? key}) : super(key: key);

  @override
  _MyStatisticsPageState createState() => _MyStatisticsPageState();
}

class _MyStatisticsPageState extends State<MyStatisticsPage>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController!
        .addListener(() => setState(() => currentTab = _tabController!.index));
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    final _kTabPages = [const StatisticsTable(), const StatisticsTable()];
    final _kTabs = [const Tab(text: "Week"), const Tab(text: "Month")];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            const Text('My statistics', style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: false,
        shape: myShapeDecoration(),
        leading: IconButton(
          icon: Icon(Icons.chevron_left_rounded,
              color: Palette.kSoftGreen, size: 40),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        margin: context.eiAll(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: context.eiSym(h: 0, v: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: .1, blurRadius: 2)
                    ]),
                child: Text('Asgabat',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Palette.kSoftGreen,
                        fontWeight: FontWeight.bold)),
              ),
              DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'Day'),
                            Tab(text: 'Week'),
                            Tab(text: 'Month'),
                          ],
                        ),
                        Container(
                            height: 300, //height of TabBarView
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: const TabBarView(children: [
                              StatisticsDataTable(),
                              StatisticsDataTable(),
                              StatisticsDataTable(),
                            ]))
                      ])),
            ]),
      ),
    );
  }
}

class StatisticsDataTable extends StatelessWidget {
  const StatisticsDataTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        StatisticTile(icon: Icons.create, title: 'All posts', stats: '81'),
        StatisticTile(icon: Icons.visibility_outlined, title: 'Views', stats: '4868'),
        StatisticTile(icon: Icons.favorite_border_rounded, title: 'Likes', stats: '3'),
        StatisticTile(icon: Icons.share_outlined, title: 'Shared', stats: '2'),
      ],
    ));
  }
}
