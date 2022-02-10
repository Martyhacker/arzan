import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      height: _size.height / 6,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.grey, spreadRadius: .5, blurRadius: 5)
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: UserCircle()),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const AutoSizeText(
                  'Name Surname',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: _size.width,
                  child: const Text(
                    sampleRichText,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserCircle extends StatelessWidget {
  const UserCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Palette.kSoftGreen, Palette.kHardGreen])),
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
            size: constraint.biggest.height,
          );
        },
      ),
    );
  }
}
