import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageUPI extends StatefulWidget {
  const HomePageUPI({super.key});

  @override
  State<HomePageUPI> createState() => _HomePageUPIState();
}

class _HomePageUPIState extends State<HomePageUPI> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 50,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2.0,
                  blurRadius: 5.0,
                  offset: const Offset(0, 3))
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/upi.jpeg",
                fit: BoxFit.contain,
                height: 100,
              ),
              const SizedBox(
                height: 20,
                child: VerticalDivider(thickness: 0.7),
              ),
              const Text(
                "PIN-less Payments",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 132,
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey[500],
              )
            ],
          ),
        ),
      ),
    );
  }
}
