import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderState();
}

class _SliderState extends State<SliderWidget> {
  int activeIndex = 0;
  final List<String> images = [
    'assets/icons/h0.jpg' ,
    'assets/icons/h1.jpg',
    'assets/icons/h2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                );
              },
              options: CarouselOptions(
                height: 185,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
            Positioned(
              top: 167,
              left: 0,
              right: 0,
              child: Center(child: buildIndicator()),
            ),
            Positioned(
              bottom: 10,
              right: 2,
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: () {
                    // Add functionality for the TextButton
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(const Size(90, 15)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.transparent),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'Know More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: 3,
    effect: const SlideEffect(
      dotColor: Colors.grey,
      activeDotColor: Colors.redAccent,
      dotWidth: 10.0,
      dotHeight: 10.0,
      spacing: 8.0,
    ),
  );
}
