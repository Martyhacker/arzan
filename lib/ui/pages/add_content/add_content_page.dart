import 'dart:io';

import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'add_content_components/image_pick_row.dart';

class AddContentPage extends StatefulWidget {
  const AddContentPage({Key? key}) : super(key: key);

  @override
  State<AddContentPage> createState() => _AddContentPageState();
}

class _AddContentPageState extends State<AddContentPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    showSuccessDialog() {
      var dialog = AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/fi-rr-thumbs-up.png'),
            const SizedBox(height: 10),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doeiusmod tempor',
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
      showDialog(context: context, builder: (context) => dialog);
    }

    return Scaffold(
      appBar: DefaultAppBar(
          titleText: 'Add content', back: const HomePage(), appBar: AppBar()),
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Colors.grey, spreadRadius: .5, blurRadius: 5)
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: _size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 5, spreadRadius: .5)
                    ]),
                child: const AutoSizeText('Ashgabat',
                    textAlign: TextAlign.center,
                    minFontSize: 20,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              const ImagePickingRow(),
              const SizedBox(height: 20),
              TextField(
                maxLines: 5,
                maxLength: 100,
                decoration: InputDecoration(
                  hintText: 'Title',
                  filled: true,
                  fillColor: Palette.kGrey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLines: 10,
                maxLength: 100,
                decoration: InputDecoration(
                  hintText: 'Description',
                  filled: true,
                  fillColor: Palette.kGrey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              CustomButton(
                  title: 'Send',
                  color: Palette.kSoftGreen,
                  onTap: () => showSuccessDialog())
            ],
          ),
        ),
      ),
    );
  }
}
