import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/ui/pages/payment/payment_components/pay_methods.dart';
import 'package:flutter/material.dart';

class FirstStep extends StatefulWidget {
  const FirstStep({Key? key}) : super(key: key);

  @override
  State<FirstStep> createState() => _FirstStepState();
}

class _FirstStepState extends State<FirstStep> {
  String groupValue = 'Free post';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('1 STEP',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: Palette.kSoftGreen)),
        Text(
          'Choose a Service',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Column(
          children: paymentMethods
              .map((e) => RadioListTile(
                    value: e.id,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        groupValue = e.title;
                        id = e.id;
                      });
                    },
                    title: Text(
                      e.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(height: 20),
        CustomButton(title: 'Next', color: Palette.kSoftGreen, onTap: () {})
      ],
    );
  }
}
