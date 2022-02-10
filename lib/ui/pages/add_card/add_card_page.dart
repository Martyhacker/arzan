import 'package:arzan/core/style/my_input_decorations.dart';
import 'package:flutter/material.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPage();
}

class _AddCardPage extends State<AddCardPage> {
  @override
  Widget build(BuildContext context) {
    MyInputDecs mid = MyInputDecs();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Add Card',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Form(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 16,
                style: Theme.of(context).textTheme.headline6,
                decoration: InputDecoration(
                    hintText: 'Card Number',
                    fillColor: Palette.kGrey,
                    filled: true,
                    counterText: '',
                    border: mid.myOutlineBorder(),
                    enabledBorder: mid.myOutlineBorder()),
              ),
              const SizedBox(height: 25),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 4,
                style: Theme.of(context).textTheme.headline6,
                decoration: InputDecoration(
                    hintText: 'Card Expiration(Month/Year)',
                    fillColor: Palette.kGrey,
                    filled: true,
                    counterText: '',
                    border: mid.myOutlineBorder(),
                    enabledBorder: mid.myOutlineBorder()),
              ),
              const SizedBox(height: 25),
              TextField(
                style: Theme.of(context).textTheme.headline6,
                decoration: InputDecoration(
                    hintText: 'Surname Name',
                    fillColor: Palette.kGrey,
                    filled: true,
                    counterText: '',
                    border: mid.myOutlineBorder(),
                    enabledBorder: mid.myOutlineBorder()),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        CustomButton(title: 'Add Card', color: Palette.kSoftGreen, onTap: () {})
      ],
    );
  }
}
