import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_input_decorations.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/ui/pages/add_content/add_content_components/content_region_dropdown.dart';
import 'package:flutter/material.dart';

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
      appBar:
          DefaultAppBar(titleText: 'Add content', back: null, appBar: AppBar()),
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          margin: context.eiAll(15),
          padding: context.eiSym(v: 50, h: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Colors.grey, spreadRadius: .5, blurRadius: 5)
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ContentRegionDropdown(),
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
                  border: MyInputDecs().myOutlineBorder(),
                  enabledBorder: MyInputDecs().myOutlineBorder(),
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
                  border: MyInputDecs().myOutlineBorder(),
                  enabledBorder: MyInputDecs().myOutlineBorder(),
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


