import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(top: 5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          TextField(
              maxLines: 1,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                fillColor: Palette.kGrey,
                filled: true,
                hintText: 'search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.transparent)),
              )),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Palette.kSoftGreen, shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}