import 'package:flutter/material.dart';

class HomePageSwitch extends StatefulWidget {
  final String imagename;
  final String name;
  const HomePageSwitch(
      {super.key, required this.imagename, required this.name});

  @override
  State<HomePageSwitch> createState() => _HomePageSwitchState();
}

class _HomePageSwitchState extends State<HomePageSwitch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            widget.imagename,
            fit: BoxFit.contain,
            height: 42,
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
    );
  }
}
