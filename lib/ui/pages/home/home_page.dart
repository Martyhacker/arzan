import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/utils/drawer_controller.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/utils/view_builder.dart';
import 'package:arzan/core/views/home_view.dart';
import 'package:arzan/core/widgets/home_app_bar_icon.dart';
import 'package:arzan/core/widgets/my_drawer.dart';
import 'package:arzan/ui/pages/home/home_components/block_card.dart';
import 'package:arzan/ui/pages/home/home_components/tile_card.dart';
import 'package:arzan/ui/pages/notifications/notifications_page.dart';
import 'package:arzan/ui/pages/official_users/official_users_page.dart';
import 'package:arzan/ui/pages/statistics/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'home_components/big_card.dart';
import 'home_components/button_view_all.dart';
import 'home_components/my_carousel.dart';
import 'home_components/recommended_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyViewBuilder viewBuilder = MyViewBuilder();
    HomeView viewProvider = Provider.of<HomeView>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.kGrey,
        key: context.read<MenuController>().scaffoldKey,
        drawer: const MyDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: _size.height / 2.9,
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              primary: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  stretchModes: const [StretchMode.blurBackground],
                  background: const MyCarousel(),
                  centerTitle: true,
                  title: FittedBox(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: AppBarIcon(
                                icon: Icons.leaderboard_rounded,
                                onTap: () => MyRouter()
                                    .route(context, const MyStatisticsPage()),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: AppBarIcon(
                                  icon: Icons.notifications_rounded,
                                  onTap: () => MyRouter().route(
                                      context, const NotificationsPage())),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: .2,
                                            blurRadius: 2)
                                      ]),
                                  child: Text('Asgabat',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6)),
                            ),
                            Expanded(
                              flex: 2,
                              child: AppBarIcon(
                                  icon: Icons.star_outline_rounded,
                                  onTap: () => MyRouter().route(
                                      context, const OfficialUsersPage())),
                            ),
                            Expanded(
                              flex: 2,
                              child: AppBarIcon(
                                  icon: viewProvider.viewType == 'tile'
                                      ? Icons.calendar_view_day_rounded
                                      : viewProvider.viewType == 'block'
                                          ? Icons.format_list_bulleted_rounded
                                          : Icons.grid_view_rounded,
                                  onTap: () => Provider.of<HomeView>(context,
                                          listen: false)
                                      .toggleView()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //const HomeViewLabel(),
                  Row(
                    children: const [
                      Expanded(child: HomeRecommendedCard()),
                      Expanded(child: HomeRecommendedCard()),
                      Expanded(child: HomeRecommendedCard())
                    ],
                  ),
                  const ViewAllButton(),
                  //const HomeViewLabel(),
                  viewProvider.viewType == 'tile'
                      ? viewBuilder.homeTileView(HomeTile(onTap: () {}))
                      : viewProvider.viewType == 'block'
                          ? viewBuilder.homeGridView(const HomeBlock())
                          : viewBuilder.homeTileView(const HomeBigCard())
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
