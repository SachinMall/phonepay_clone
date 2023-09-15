import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 93, 51, 164)),
          iconTheme:
              const IconThemeData(color: Color.fromARGB(255, 93, 51, 164)),
          scaffoldBackgroundColor: const Color.fromARGB(255, 249, 216, 255)),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
