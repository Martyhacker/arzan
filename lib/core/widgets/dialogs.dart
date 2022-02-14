import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

banUserDialog(BuildContext context) => AlertDialog(
      title: const Text('Nagilelik bildirmek', textAlign: TextAlign.center),
      scrollable: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
              textAlign: TextAlign.center,
            ),
            TextField(
              maxLines: 15,
              decoration: InputDecoration(
                  hintText: 'Description',
                  fillColor: Palette.kGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent))),
            ),
            const SizedBox(height: 20),
            CustomButton(
                title: 'Send',
                color: Palette.kRed,
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context, builder: (context) => noInternetDialog());
                })
          ],
        ),
      ),
    );
successDialog() => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.thumb_up_alt_rounded,
            size: 60,
            color: Palette.kSoftGreen,
          ),
          const Text(sampleMiniText, textAlign: TextAlign.center)
        ],
      ),
    );
noInternetDialog() => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.signal_wifi_off_rounded,
            size: 60,
            color: Palette.kSoftGreen,
          ),
          const Text(sampleMiniText, textAlign: TextAlign.center)
        ],
      ),
    );
