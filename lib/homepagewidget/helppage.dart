import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Help"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "View Tickets",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.deepPurple),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'English',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 18,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Transactions Related",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Help(
              name: 'Have an issue with a transaction?',
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Getting Started",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 5,
            ),
            const Help(
              name: 'Getting Started with PhonePe',
            ),
            const Help(
              name: 'Understanding Payments on PhonePe',
            ),
            const Help(
              name: 'Make Safe UPI Payments',
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Other Topics",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            const Help(
              name: 'Account Security & Reporting Fradulent Activity',
            ),
            const Help(
              name: 'Profile',
            ),
            const Help(
              name: 'Money Transfer',
            ),
            const Help(
              name: 'Rewards & Refer and Earn',
            ),
            const Help(
              name: 'Local Stores and Shops',
            ),
            const Help(
              name: 'Wealth',
            ),
            const Help(
              name: 'Insurance',
            ),
            const Help(
              name: 'PhonePe Switch',
            ),
            const Help(
              name: 'Payments on other websites and apps',
            ),
          ],
        ),
      ),
    );
  }
}

class Help extends StatelessWidget {
  final String name;
  const Help({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.all(1),
          height: 40,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w300),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
