import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/ui/pages/home/home_components/tile_card.dart';
import 'package:arzan/ui/pages/notification_detail/notification_detail_page.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: _size.height / 8,
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: DefaultAppBar(
                    titleText: 'Push-notifications', 
                    back: null,
                    appBar: AppBar()),
                centerTitle: true,
                title: FittedBox(
                  child: SizedBox(
                    width: _size.width,
                    child: Padding(
                      padding: context.eiSym(h: 20, v: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('165',
                              style: Theme.of(context).textTheme.headline6),
                          // Container(
                          //   padding: const EdgeInsets.all(5),
                          //   decoration: MyBoxDecs().notificationsPage(),
                          //   child: Icon(Icons.grid_view_rounded,
                          //       color: Palette.kSoftGreen),
                          // ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          // SliverToBoxAdapter(
          //   child: SingleChildScrollView(
          //     child: Column(
          //         children: List.generate(
          //             10,
          //             (index) => HomeTile(
          //                 onTap: () => MyRouter().route(
          //                     context, const NotificationDetailPage())))),
          //   ),
          // )
        ],
      ),
    );
  }
}
