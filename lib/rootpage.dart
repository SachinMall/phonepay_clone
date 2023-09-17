import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepay_clone/Wealth.dart';
import 'package:phonepay_clone/history.dart';
import 'package:phonepay_clone/homepage.dart';
import 'package:phonepay_clone/insurance.dart';
import 'package:phonepay_clone/stores.dart';

import 'homepagewidget/helppage.dart';
import 'homepagewidget/profile.dart';
import 'notification.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final pageoptions = [
    const HomePage(),
    const Stores(),
    const Insurance(),
    const Wealth(),
    const History(),
  ];

  int _currentIndex = 0;
  void onTabSwitch(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Container(
                height: 38,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Get.to(() => const Profile());
                    },
                    icon: const Icon(
                      Icons.person_outline,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: GestureDetector(
          onTap: () {
            print("object");
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Add Address",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              const SizedBox(height: 4),
              Text(
                "Murbad Subdistrict",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              )
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code_scanner,
                  size: 26,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => const NotificationIcon());
                    },
                    icon: const Icon(
                      Icons.notifications,
                      size: 26,
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: 8,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      constraints:
                          const BoxConstraints(minHeight: 13, minWidth: 13),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Get.to(() => const HelpPage());
                },
                icon: const Icon(
                  Icons.help_outline,
                  size: 26,
                ),
              ),
            ],
          ),
        ],
      ),
      body: pageoptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabSwitch,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house_siding,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                size: 20,
              ),
              label: "Stores"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shield,
                size: 20,
              ),
              label: "Inusrance"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.currency_rupee,
                size: 20,
              ),
              label: "Wealth"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                size: 20,
              ),
              label: "History")
        ],
        selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    );
  }
}
