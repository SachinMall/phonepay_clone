import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageSponsored extends StatefulWidget {
  final String image;
  final String name;
  final Widget nextPage;
  const HomePageSponsored(
      {super.key,
      required this.image,
      required this.name,
      required this.nextPage});

  @override
  State<HomePageSponsored> createState() => _HomePageSponsoredState();
}

class _HomePageSponsoredState extends State<HomePageSponsored> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(widget.nextPage);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              widget.image,
              fit: BoxFit.contain,
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
