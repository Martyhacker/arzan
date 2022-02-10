import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> carouselImages = [
  'https://wallpapercave.com/wp/wp2928790.jpg',
  'https://wallpapercave.com/wp/wp1813968.jpg',
  'https://wallpapercave.com/wp/wp2208676.jpg',
  'https://wallpapercave.com/wp/wp1811856.jpg'
];

class MyCarousel extends StatefulWidget {
  const MyCarousel({Key? key}) : super(key: key);

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

final CarouselController _controller = CarouselController();
int _current = 0;

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Stack(children: [
      CarouselSlider(
        carouselController: _controller,
        items: carouselImages
            .map((e) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(e), fit: BoxFit.fill)),
                    width: _size.width,
                    height: _size.height,
                  ),
                ))
            .toList(),
        options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 2000),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        top: MediaQuery.of(context).size.width / 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              carouselImages.length,
              (index) => Container(
                    height: 6,
                    width: 6,
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Palette.kSoftGreen
                            : Colors.grey),
                  )),
        ),
      ),
    ]);
  }
}
