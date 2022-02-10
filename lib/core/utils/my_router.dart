import 'package:arzan/core/views/screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyRouter {
  route(BuildContext context, Widget dst) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => dst));
  change(BuildContext context, Widget dst) =>
      Provider.of<ScreenChanger>(context, listen: false).setMainScreen(dst);
}
