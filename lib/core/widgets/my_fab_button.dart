import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFabButton extends StatelessWidget {
  final VoidCallback onPressed;
  const MyFabButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(5),
      child: FloatingActionButton(
        onPressed: onPressed,
        mini: false,
        
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Palette.kSoftGreen, Palette.kHardGreen])),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SvgPicture.asset('assets/icons/fi-rr-add.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
