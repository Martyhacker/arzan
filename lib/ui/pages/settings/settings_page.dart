import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/provider/theme_provider.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/style/my_shape_decoration.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/ui/pages/terms/terms_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkness = false;
  bool notifications = false;
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
        Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: myShapeDecoration(),
        automaticallyImplyLeading: false,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(Icons.chevron_left_rounded,
                color: Palette.kSoftGreen, size: 40),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        margin: context.eiAll(10),
        padding: context.eiSym(h: 10, v: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  spreadRadius: .5,
                  offset: Offset.zero)
            ]),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.dark_mode_rounded, color: Palette.kSoftGreen),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Night mode',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.normal)),
                  CupertinoSwitch(
                      value: themeProvider.isDark,
                      onChanged: (val) {
                        themeProvider.isDark;
                        themeProvider.toggleTheme();
                      }),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_rounded,
                color: Palette.kSoftGreen,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notifications',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.normal)),
                  CupertinoSwitch(
                      value: notifications,
                      onChanged: (val) {
                        setState(() => notifications = val);
                      }),
                ],
              ),
            ),
            ExpansionTile(
              leading: Icon(Icons.translate_rounded, color: Palette.kSoftGreen),
              title: Text('Language',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.normal)),
              children: [
                ListTile(
                  leading: Container(
                      width: _size.width/12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/flags/tkm.png')))),
                  title: const Text('Turkmen'),
                ),
                ListTile(
                  leading: Container(
                      width: _size.width/12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/flags/rus.png')))),
                  title: const Text('Russian'),
                ),
              ],
            ),
            ListTile(
                onTap: () => MyRouter().route(context, const TermsPage()),
                leading: Icon(
                  Icons.receipt_long_rounded,
                  color: Palette.kSoftGreen,
                ),
                title: Text('Rules',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.normal))),
            ListTile(
                leading: Icon(
                  Icons.download_rounded,
                  color: Palette.kSoftGreen,
                ),
                title: Text('Downloads',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.normal))),
            ListTile(
                leading:
                    Icon(Icons.location_on_outlined, color: Palette.kSoftGreen),
                title: Text('Region',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.normal))),
            ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Palette.kSoftGreen,
                ),
                title: Text('Exit',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.normal)))
          ],
        ),
      ),
    );
  }
}
