import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/utils/view_builder.dart';
import 'package:arzan/core/views/official_view.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/core/widgets/user_block.dart';
import 'package:arzan/core/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OfficialUsersPage extends StatefulWidget {
  const OfficialUsersPage({Key? key}) : super(key: key);

  @override
  State<OfficialUsersPage> createState() => _OfficialUsersPageState();
}

class _OfficialUsersPageState extends State<OfficialUsersPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    OfficialUserView userView = Provider.of<OfficialUserView>(context);
    MyViewBuilder viewBuilder = MyViewBuilder();
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
              titlePadding: const EdgeInsets.symmetric(vertical: 10),
              collapseMode: CollapseMode.pin,
              background: DefaultAppBar(
                  titleText: 'Official users', back: null, appBar: AppBar()),
              centerTitle: true,
              title: FittedBox(
                child: SizedBox(
                  width: _size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('165',
                            style: Theme.of(context).textTheme.headline6),
                        const OfficialTogglerButton()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: userView.viewType == 'tile'
                  ? viewBuilder.homeTileView(const UserTile())
                  : viewBuilder.homeGridView(const UserBlock()))
        ],
      ),
    );
  }
}

class OfficialTogglerButton extends StatelessWidget {
  const OfficialTogglerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OfficialUserView userView = Provider.of<OfficialUserView>(context);
    return InkWell(
      onTap: () =>
          Provider.of<OfficialUserView>(context, listen: false).toggleView(),
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: MyBoxDecs().notificationsPage(),
        child: Icon(
            userView.viewType == 'tile'
                ? Icons.grid_view_rounded
                : Icons.format_list_bulleted_rounded,
            color: Palette.kSoftGreen),
      ),
    );
  }
}
