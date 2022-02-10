import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/views/search_view.dart';
import 'package:arzan/core/views/user_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewTogglerButton extends StatelessWidget {
  const ViewTogglerButton({Key? key, required this.view}) : super(key: key);

  final int view;

  @override
  Widget build(BuildContext context) {
    SearchView searchView = Provider.of<SearchView>(context);
    UserView userView = Provider.of<UserView>(context);
    return InkWell(
      onTap: () {
        if (view == 0) {
          Provider.of<SearchView>(context, listen: false).toggleView();
        } else if (view == 1) {
          Provider.of<UserView>(context, listen: false).toggleView();
        }
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.only(right: 25, top: 10, left: 10, bottom: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.grey, spreadRadius: .1, blurRadius: 5)
            ]),
        child: view == 0
            ? Icon(
                searchView.viewType == 'tile'
                    ? Icons.calendar_view_day_rounded
                    : searchView.viewType == 'block'
                        ? Icons.format_list_bulleted_rounded
                        : Icons.grid_view_rounded,
                color: Palette.kSoftGreen)
            : Icon(
                userView.viewType == 'tile'
                    ? Icons.format_list_bulleted_rounded
                    : Icons.grid_view_rounded,
                color: Palette.kSoftGreen),
      ),
    );
  }
}
