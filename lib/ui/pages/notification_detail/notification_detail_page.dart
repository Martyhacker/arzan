import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationDetailPage extends StatefulWidget {
  const NotificationDetailPage({Key? key}) : super(key: key);

  @override
  _NotificationDetailPageState createState() => _NotificationDetailPageState();
}

class _NotificationDetailPageState extends State<NotificationDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: DefaultAppBar(
          titleText: 'Notification Detail',
          back: null,
          appBar: AppBar()),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(10),
            child: Container(
              width: _size.width,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: _size.width,
                    height: _size.height / 3,
                    padding: const EdgeInsets.all(10),
                    decoration: MyBoxDecs().notificationDetailImage(),
                    child: Container(
                      decoration: BoxDecoration(color: Palette.kSoftGreen),
                      child: const Icon(Icons.image),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Lorem ipsum dolor sit amet ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 25),
                        Text(sampleRichText),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
