import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/widgets/subscribe_button.dart';
import 'package:arzan/core/widgets/user_circle.dart';
import 'package:arzan/ui/pages/official_user_detail/official_user_detail_page.dart';
import 'package:flutter/material.dart';

class UserBlock extends StatefulWidget {
  const UserBlock({Key? key}) : super(key: key);

  @override
  State<UserBlock> createState() => _UserBlockState();
}

class _UserBlockState extends State<UserBlock> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => MyRouter().route(context, const OfficialUserDetail()),
      child: Container(
        height: _size.height / 4,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(flex: 2, child: UserCircle()),
            Expanded(
                child: Column(
              children: const [
                Text('Name Surname'),
                SizedBox(height: 10),
                SubscribeButton()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
