import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/utils/drawer_controller.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/views/screen_view.dart';
import 'package:arzan/core/widgets/my_fab_button.dart';
import 'package:arzan/ui/pages/add_content/add_content_page.dart';
import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:arzan/ui/pages/register/register_page.dart';
import 'package:arzan/ui/pages/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenChanger currentScreen = Provider.of<ScreenChanger>(context);
    return Scaffold(
      body: currentScreen.mScreen,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/fi-rr-drawer.svg',
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    iconColor: Colors.grey,
                    onPressed: context.read<MenuController>().controlMenu),
              ),
              Expanded(
                child: AppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/fi-rr-search.svg',
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    iconColor: currentScreen.mScreen == const SearchPage()
                        ? Palette.kSoftGreen
                        : Colors.grey,
                    onPressed: () =>
                        MyRouter().change(context, const SearchPage())),
              ),
              Expanded(
                child: AppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/fi-rr-home.svg',
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    iconColor: currentScreen.mScreen == const HomePage()
                        ? Palette.kSoftGreen
                        : Colors.grey,
                    onPressed: () =>
                        MyRouter().change(context, const HomePage())),
              ),
              Expanded(
                child: AppBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/fi-rr-user.svg',
                      width: MediaQuery.of(context).size.width / 25,
                    ),
                    iconColor: currentScreen.mScreen == const RegisterPage()
                        ? Palette.kSoftGreen
                        : Colors.grey,
                    onPressed: () =>
                        MyRouter().change(context, const RegisterPage())),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: MyFabButton(
          onPressed: () =>
              MyRouter().route(context, const AddContentPage())),
    );
  }
}

class AppBarItem extends StatefulWidget {
  final Widget icon;
  final Color iconColor;
  final VoidCallback onPressed;
  const AppBarItem(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: widget.icon,
    );
  }
}
