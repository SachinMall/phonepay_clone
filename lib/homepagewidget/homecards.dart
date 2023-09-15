import 'package:flutter/material.dart';

class HomePageCard extends StatefulWidget {
  const HomePageCard({super.key});

  @override
  State<HomePageCard> createState() => _HomePageCardState();
}

class _HomePageCardState extends State<HomePageCard> {
  List<String> image = [
    "assets/images/2.jpg",
    "assets/images/1.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemCount: image.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(
              image[index].toString(),
              fit: BoxFit.cover,
              width: 400, //in future i can change this to Get.width
            ),
          );
        },
      ),
    );
  }
}
