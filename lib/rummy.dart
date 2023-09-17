import 'package:flutter/material.dart';

class Rummy extends StatefulWidget {
  const Rummy({super.key});

  @override
  State<Rummy> createState() => _RummyState();
}

class _RummyState extends State<Rummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}
