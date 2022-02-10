import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
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
                      margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: _size.height / 4,
                          bottom: 50),
                      padding: EdgeInsets.only(
                          top: _size.height / 10,
                          left: 10,
                          right: 10,
                          bottom: 10),
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
                      child: Container(
                          height: _size.height / 8,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Palette.kSoftGreen,
                                        Palette.kHardGreen
                                      ])),
                              child: Center(
                                child: Icon(
                                  Icons.receipt_long_rounded,
                                  color: Colors.white,
                                  size: _size.width / 6,
                                ),
                              ))),
                    )
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
