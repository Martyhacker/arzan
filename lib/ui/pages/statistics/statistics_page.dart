import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';

import 'statistics_components/statistics_table.dart';

class MyStatisticsPage extends StatefulWidget {
  const MyStatisticsPage({Key? key}) : super(key: key);

  @override
  _MyStatisticsPageState createState() => _MyStatisticsPageState();
}

class _MyStatisticsPageState extends State<MyStatisticsPage> {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = [const StatisticsTable(), const StatisticsTable()];
    final _kTabs = [const Tab(text: "Week"), const Tab(text: "Month")];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('My statistics',
                style: TextStyle(color: Colors.black)),
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.chevron_left_rounded,
                  color: Palette.kSoftGreen, size: 40),
              onPressed: () => Navigator.pop(context),
            ),
            bottom: TabBar(
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: _kTabs),
          ),
          body: TabBarView(children: _kTabPages)),
    );
  }
}
