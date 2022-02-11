import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';

class ChooseCardButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ChooseCardButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: _size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: const EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(
            color: Palette.kGrey,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: .01,
                  offset: Offset(0, 5))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.credit_card_rounded, color: Palette.kSoftGreen),
            Text(text, style: Theme.of(context).textTheme.headline6),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}

class AddCardButton extends StatelessWidget {
  final VoidCallback onTap;
  const AddCardButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: _size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Palette.kSoftGreen),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.add_circle_outline_rounded, color: Palette.kSoftGreen),
            Text('Add card',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Palette.kSoftGreen)),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
