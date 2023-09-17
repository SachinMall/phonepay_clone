import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageCardsSlider extends StatefulWidget {
  const HomePageCardsSlider({super.key});

  @override
  State<HomePageCardsSlider> createState() => _HomePageCardsSliderState();
}

class _HomePageCardsSliderState extends State<HomePageCardsSlider> {
  List imagelist = [
    {"id": 1, "image_path": "assets/images/c21.JPG"},
    {"id": 1, "image_path": "assets/images/c22.JPG"},
    {"id": 1, "image_path": "assets/images/c23.JPG"},
    {"id": 1, "image_path": "assets/images/c24.JPG"},
    {"id": 1, "image_path": "assets/images/c25.JPG"},
    {"id": 1, "image_path": "assets/images/c26.JPG"}
  ];
  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              child: CarouselSlider(
                  items: imagelist
                      .map(
                        (item) => ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item["image_path"],
                            fit: BoxFit.cover,

                            // width:infinity,
                          ),
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentindex = index;
                        });
                      })),
            ),
          ],
        )
      ],
    );
  }
}
