import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/ui/pages/about/about_page.dart';
import 'package:arzan/ui/pages/contact/contact_page.dart';
import 'package:arzan/ui/pages/payment/payment_components/first_step.dart';
import 'package:arzan/ui/pages/payment/payment_page.dart';
import 'package:arzan/ui/pages/settings/settings_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        DrawerHeader(
            child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/logo_gradient.png',
                  width: MediaQuery.of(context).size.width / 4,
                )),
            const SizedBox(height: 10),
            const AutoSizeText(
              'Arzan',
              minFontSize: 50,
              style: TextStyle(fontFamily: 'Arista'),
            ),
          ],
        )),
        Column(
          children: [
            DrawerItem(
              title: 'About us',
              icon: Icons.info_outline,
              onTap: () => MyRouter().route(context, const AboutPage()),
            ),
            DrawerItem(
              title: 'Payment',
              icon: Icons.credit_card_rounded,
              onTap: () => MyRouter()
                  .route(context, const PaymentPage(content: FirstStep())),
            ),
            DrawerItem(
              title: 'Share',
              icon: Icons.share_outlined,
              onTap: () {},
            ),
            DrawerItem(
              title: 'Contact us',
              icon: Icons.headset_mic_outlined,
              onTap: () => MyRouter().route(context, const ContactUsPage()),
            ),
            DrawerItem(
              title: 'Rate us',
              icon: Icons.star_border_rounded,
              onTap: () {},
            ),
            DrawerItem(
              title: 'Settings',
              icon: Icons.settings_outlined,
              onTap: () => MyRouter().route(context, const SettingsPage()),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.copyright_rounded),
            Text(
                DateTime.now().toString().substring(0, 4) +
                    ' Arzan. ' +
                    'All rights reserved',
                style: const TextStyle(fontWeight: FontWeight.w500))
          ],
        )
      ]),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const DrawerItem(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: Palette.kSoftGreen),
      title: Text(title, style: Theme.of(context).textTheme.headline6),
    );
  }
}
