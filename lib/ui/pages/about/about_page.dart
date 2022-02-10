import 'package:arzan/core/constants/constants.dart';
import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                'assets/images/background_percentage.png',
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
                          Text('About us',
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
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Palette.kSoftGreen,
                                      Palette.kHardGreen
                                    ])),
                            child: Image.asset('assets/images/logo_ticket.png',
                                width: 10, height: 10)),
                      ),
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
