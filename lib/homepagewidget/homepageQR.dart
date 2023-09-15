import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageMYQR extends StatefulWidget {
  const HomePageMYQR({super.key});

  @override
  State<HomePageMYQR> createState() => _HomePageMYQRState();
}

class _HomePageMYQRState extends State<HomePageMYQR> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 45,
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
              const Icon(
                Icons.qr_code_2_sharp,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "My QR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
                child: VerticalDivider(thickness: 0.7),
              ),
              const Text(
                "UPI ID: 9623678461@ybl",
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                width: 110,
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
