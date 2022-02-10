import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/ui/pages/payment/payment_components/pay_methods.dart';
import 'package:flutter/material.dart';

class SecondStep extends StatefulWidget {
  const SecondStep({Key? key}) : super(key: key);

  @override
  State<SecondStep> createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('2 STEP',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: Palette.kSoftGreen)),
        Text(
          'Choose a Region',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Column(
          children: paymentRegions
              .map((e) => CheckboxListTile(
                    value: e.state,
                    title: Text(e.city,
                        style: Theme.of(context).textTheme.headline6),
                    onChanged: (val) {
                      setState(() {
                        e.state = val!;
                      });
                    },
                  ))
              .toList(),
        ),
        const SizedBox(height: 20),
        CustomButton(title: 'Next', color: Palette.kSoftGreen, onTap: () {})
      ],
    );
  }
}
