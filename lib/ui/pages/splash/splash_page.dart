import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/ui/pages/regions/select_region_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _width = _size.width;
    double _height = _size.height;
    return Scaffold(
      body: InkWell(
        onTap: () => MyRouter().route(context, const SelectRegionPage()),
        child: AnimatedContainer(
            padding: context.eiSym(h: 50, v: 0),
            width: _width,
            height: _height,
            duration: const Duration(seconds: 5),
            curve: Curves.linear,
            decoration: MyBoxDecs().gradientBack(),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/logo_ticket.png',
                width: _size.width / 2,
              ),
              SizedBox(height: _size.height / 32),
              const AutoSizeText(
                'Arzan',
                minFontSize: 60,
                style: TextStyle(
                  fontFamily: 'Arista',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: _size.height / 32),
              const AutoSizeText(
                'ÝURDUMYZYŇ ÄHLI KÜNJEGINDE',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ])),
      ),
    );
  }
}
