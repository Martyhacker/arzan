import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_input_decorations.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    MyInputDecs mid = MyInputDecs();
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: 'Contact us',
        appBar: AppBar(),
        back: null,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: _size.width,
          decoration: BoxDecoration(
              color: kLightCardColor, borderRadius: BorderRadius.circular(10)),
          margin: context.eiAll(10),
          padding: context.eiSym(v: 20, h: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipicins elit, sed du eismod tempor incidudant ut labore et dolore magna aliqua',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: MyInputDecs().telephone(),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLength: 10000,
                maxLines: 20,
                decoration: InputDecoration(
                    hintText: 'Description',
                    filled: true,
                    fillColor: Palette.kGrey,
                    border: mid.myOutlineBorder(),
                    enabledBorder: mid.myOutlineBorder()),
              ),
              CustomButton(
                  title: 'Send', color: Palette.kSoftGreen, onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
