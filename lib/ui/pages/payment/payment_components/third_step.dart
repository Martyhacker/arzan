import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/ui/pages/payment/payment_components/choose_card_button.dart';
import 'package:flutter/material.dart';

class ThirdStep extends StatefulWidget {
  const ThirdStep({Key? key}) : super(key: key);

  @override
  State<ThirdStep> createState() => _ThirdStepState();
}

class _ThirdStepState extends State<ThirdStep> {
  selectCardDialog(){
    var alertDialog = AlertDialog(
      title: const Text('Choose Card', textAlign: TextAlign.center,),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ChooseCardButton(text: 'Aman Amanow', onTap: (){}),
          AddCardButton(onTap: (){})
        ],
      ),
    );
    showDialog(context: context, builder: (context)=>alertDialog);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('3 STEP',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold, color: Palette.kSoftGreen)),
        Text('Confirmation',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold)),
        Column(
          children:  [
            ChooseCardButton(text: 'Choose Card',onTap: ()=>selectCardDialog(),),
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
