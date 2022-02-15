import 'package:arzan/core/api/services/post_service.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_shape_decoration.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/utils/view_builder.dart';
import 'package:arzan/ui/pages/home/home_components/recommended_card.dart';
import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:arzan/ui/pages/search/search_components/view_togglle_button.dart';
import 'package:flutter/material.dart';

class ViewAllPage extends StatefulWidget {
  const ViewAllPage({Key? key}) : super(key: key);

  @override
  _ViewAllPageState createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Recommended',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [],
        automaticallyImplyLeading: false,
        shape: myShapeDecoration(),
        leading: IconButton(
          icon: Icon(Icons.chevron_left_rounded,
              color: Palette.kSoftGreen, size: 40),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: FutureBuilder<dynamic>(
              future: PostService().fetchDiscounts(limit: 16),
              builder: (context, snap) {
                if (snap.hasData) {
                  return GridView.builder(
                      itemCount: snap.data.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, childAspectRatio: 0.65),
                      itemBuilder: (context, index) => HomeRecommendedCard(model: snap.data[index]));
                } else {
                  return Text('Oops');
                }
              }),
        ),
      ),
    );
  }
}
