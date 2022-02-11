import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/widgets/upper_circle_logo.dart';
import 'package:flutter/material.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                'assets/images/arzan_background_image.png',
                fit: BoxFit.cover,
                width: _size.width,
                height: _size.height / 3,
              ),
            ),
            SizedBox(
              width: _size.width,
              height: _size.height,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      width: _size.width,
                      margin: context.mTermsPage(),
                      padding: context.pTermsPage(),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Terms',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 25),
                          const Text(sampleRichText),
                        ],
                      ),
                    ),
                    Positioned(
                        top: _size.height / 5,
                        left: 0,
                        right: 0,
                        child: UpperCircleLogo(
                            child: Center(
                          child: Icon(
                            Icons.receipt_long_rounded,
                            color: Colors.white,
                            size: _size.width / 8,
                          ),
                        ))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
