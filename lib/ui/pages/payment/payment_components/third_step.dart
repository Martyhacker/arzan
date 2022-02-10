import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ThirdStep extends StatefulWidget {
  const ThirdStep({Key? key}) : super(key: key);

  @override
  State<ThirdStep> createState() => _ThirdStepState();
}

class _ThirdStepState extends State<ThirdStep> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('3 STEP',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: Palette.kSoftGreen)),
        Text(
          'Confirmation',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Container(
              width: _size.width,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: const EdgeInsets.symmetric(vertical: 25),
              decoration: BoxDecoration(
                  color: Palette.kGrey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: .1,
                        offset: Offset(0, 5))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.credit_card_rounded, color: Palette.kSoftGreen),
                  Text('Choose card',
                      style: Theme.of(context).textTheme.headline6),
                  const SizedBox()
                ],
              ),
            ),
            const ConfirmationDatas(data: 'Service', value: 'Banner'),
            const ConfirmationDatas(data: 'Region', value: 'AG, AH, MR'),
            const ConfirmationDatas(data: 'Total', value: '200 TMT'),
          ],
        ),
        const SizedBox(height: 20),
        CustomButton(title: 'Confirm', color: Palette.kSoftGreen, onTap: () {})
      ],
    );
  }
}

class ConfirmationDatas extends StatelessWidget {
  final String data, value;
  const ConfirmationDatas({Key? key, required this.data, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(data,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.normal)),
          Text(
            value,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
