import 'package:arzan/core/api/models/post_model.dart';
import 'package:arzan/core/api/services/post_service.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_shape_decoration.dart';
import 'package:arzan/ui/pages/home/home_components/recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class ViewAllPage extends StatefulWidget {
  const ViewAllPage({Key? key}) : super(key: key);

  @override
  _ViewAllPageState createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  List<PostModel> datas = [];
   var limits = 10, category, region;
  bool isLoading = false;
  int currentLength = 0;
  final int increment = 10;  
  @override
  void initState() {
    _loadMore();
    super.initState();
  }
  
  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });
  
    // dummy delay
    await PostService().fetchDiscount(limit: increment, category: 1, region: 6);
    // for (var i = currentLength; i <= currentLength + increment; i++) {
    //   datas.add(i);
    // }
    setState(() {
      isLoading = false;
      currentLength = datas.length;
    });
  }
  @override
  Widget build(BuildContext context) {
      // Future future = PostService().fetchDiscount(limit: limits, category:1, region:6);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Recommended',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: myShapeDecoration(),
        leading: IconButton(
          icon: Icon(Icons.chevron_left_rounded,
              color: Palette.kSoftGreen, size: 40),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: LazyLoadScrollView(
        scrollDirection: Axis.vertical,
        onEndOfPage: () => _loadMore(),
        isLoading: isLoading,
        child: Container(
          padding: const EdgeInsets.all(7),
          child: FutureBuilder<dynamic>(
              future: PostService().fetchDiscount(limit: 24, category: 1, region: 6),
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
                  return const Text('Oops');
                }
              }),
        ),
      ),
    );
  }
}
