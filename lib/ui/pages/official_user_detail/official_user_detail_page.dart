import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/core/widgets/subscribe_button.dart';
import 'package:arzan/core/widgets/upper_circle_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfficialUserDetail extends StatefulWidget {
  const OfficialUserDetail({Key? key}) : super(key: key);

  @override
  _OfficialUserDetailState createState() => _OfficialUserDetailState();
}

class _OfficialUserDetailState extends State<OfficialUserDetail> {

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(titleText: 'User', appBar: AppBar(), back: null,),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/background_percentage.png',
                fit: BoxFit.cover,
                width: _size.width,
                height: _size.height / 3,
              ),
            ),
            SizedBox(
              width: _size.width,
              height: _size.height,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      width: _size.width,
                      margin: context.mTermsPage(),
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 12, left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: kLightCardColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Administrator',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontWeight: FontWeight.bold)),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.location_on, color: Palette.kSoftGreen,),
                                      Text('Asgabat', style: Theme.of(context).textTheme.subtitle1,)
                                    ],
                                  ),
                                  Container(
                                    margin: context.eiSym(h: 0, v: 20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('12', style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),),
                                        Text('SUBSCRIBERS', style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),)
                                      ],
                                    )),
                          const SizedBox(height: 25),
                          const SubscribeButton()
                           
                        ],
                      ),
                    ),
                    Positioned(
                      top: _size.height / 5,
                      left: 0,
                      right: 0,
                      child: UpperCircleLogo(child: Image.asset('assets/images/logo_ticket.png',
              width: 10, height: 10),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
