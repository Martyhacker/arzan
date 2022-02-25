import 'package:arzan/core/style/my_shape_decoration.dart';
import 'package:arzan/core/utils/drawer_controller.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/utils/view_builder.dart';
import 'package:arzan/core/views/search_view.dart';
import 'package:arzan/core/views/user_view.dart';
import 'package:arzan/core/widgets/my_drawer.dart';
import 'package:arzan/core/widgets/user_block.dart';
import 'package:arzan/core/widgets/user_tile.dart';
import 'package:arzan/ui/pages/home/home_components/big_card.dart';
import 'package:arzan/ui/pages/home/home_components/block_card.dart';
import 'package:arzan/ui/pages/home/home_components/tile_card.dart';
import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:provider/provider.dart';

import 'search_components/search_bar.dart';
import 'search_components/view_togglle_button.dart';

int currentTab = 0;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
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
    SearchView searchView = Provider.of<SearchView>(context);
    UserView userView = Provider.of<UserView>(context);
    MyViewBuilder viewBuilder = MyViewBuilder();
    final _kTabPages = [
      Container()
      // searchView.viewType == 'tile'
      //     ? viewBuilder.buildTileView(HomeTile(onTap: () {}))
      //     : searchView.viewType == 'block'
      //         ? viewBuilder.buildGridView(const HomeBlock())
      //         : viewBuilder.buildTileView(const HomeBigCard()),
      // userView.viewType == 'tile'
      //     ? viewBuilder.buildGridView(const UserBlock())
      //     : viewBuilder.buildTileView(const UserTile())
    ];
    final _kTabs = [const Tab(text: "Discounts"), const Tab(text: "Users")];

    return WillPopScope(
      onWillPop: () => MyRouter().change(context, const HomePage()),
      child: Scaffold(
        key: context.read<MenuController>().scaffoldKey,
        drawer: const MyDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const SearchBar(),
            actions: [ViewTogglerButton(view: currentTab)],
            automaticallyImplyLeading: false,
            shape: myShapeDecoration(),
            leading: IconButton(
              icon: Icon(Icons.chevron_left_rounded,
                  color: Palette.kSoftGreen, size: 40),
              onPressed: () => MyRouter().change(context, const HomePage()),
            ),
            bottom: TabBar(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey,
                labelStyle: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.grey),
                unselectedLabelStyle: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.grey),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: _kTabs),
          ),
          body: TabBarView(
            children: _kTabPages,
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
          )),
    );
  }
}
