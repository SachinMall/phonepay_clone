import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepagewidget/Home_recharge_bill.dart';
import 'homepagewidget/homeadd.dart';
import 'homepagewidget/homecards.dart';
import 'homepagewidget/homepageQR.dart';
import 'homepagewidget/homepage_UPI.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    onPressed: () {},
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
                onPressed: () {},
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
            onPressed: () {},
            icon: const Icon(
              Icons.help_outline,
              size: 26,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const HomePageCard(),
            Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(6),
              width: Get.width,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3))
                  ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Money Transfers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeMoneyTransfer(
                            name: "To Mobile\n Number",
                            iconname: 'person_2_outlined'),
                        HomeMoneyTransfer(
                            name: "To Bank/\n  UPI ID",
                            iconname: 'home_outlined'),
                        HomeMoneyTransfer(
                            name: " To Self\nAccount",
                            iconname: 'arrow_circle_down_outlined'),
                        HomeMoneyTransfer(
                            name: " Check\nBalance",
                            iconname: 'account_balance'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const HomePageMYQR(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomePageAdd(
                    iconname: 'account_balance_wallet', name: "PhonePe Wallet"),
                HomePageAdd(iconname: 'card_giftcard', name: "Rewards"),
                HomePageAdd(iconname: 'share', name: "Refer & Get ₹100"),
              ],
            ),
            const HomePageUPI(),
            Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(6),
              height: 210,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 3,
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 3)),
                  ],
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recharge & Pay Bills",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 23,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Center(
                            child: Text(
                              'My Bills',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomePageRecharge(
                        iconname: 'smartphone',
                        name: '  Mobile\nRecharge',
                      ),
                      HomePageRecharge(
                        iconname: 'cast',
                        name: 'DTH',
                      ),
                      HomePageRecharge(
                        iconname: 'light_bulb',
                        name: 'Electricity',
                      ),
                      HomePageRecharge(
                        iconname: 'credit_card',
                        name: 'Credit Card\nBill Payment',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const HomePageRecharge(
                            iconname: 'house',
                            name: '   Rent\nPayment',
                          ),
                          const HomePageRecharge(
                            iconname: 'shopping_bag',
                            name: '     Loan\nRepayment',
                          ),
                          const HomePageRecharge(
                            iconname: 'local_gas_station',
                            name: ' Book A\nCylinder',
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 42,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.deepPurple,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text("See All"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        height: 65,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple,
                    ),
                    child: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Text("Home")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple,
                    ),
                    child: const Icon(
                      Icons.store,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Text("Stores")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple,
                    ),
                    child: const Icon(
                      Icons.shield,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Text("Inusrance")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple,
                    ),
                    child: const Icon(
                      Icons.paid,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Text("Wealth")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple,
                    ),
                    child: const Icon(
                      Icons.double_arrow,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Text(
                  "History",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMoneyTransfer extends StatelessWidget {
  final String name;
  final String iconname;
  const HomeMoneyTransfer(
      {Key? key, required this.name, required this.iconname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData _getIconData(String iconName) {
      // Map string icon names to IconData
      final iconData = {
        "person_2_outlined": Icons.person_2_outlined,
        "home_outlined": Icons.home_outlined,
        "arrow_circle_down_outlined": Icons.arrow_circle_down_outlined,
        "account_balance": Icons.account_balance,
      };
      return iconData[iconName] ??
          Icons.error; // Return 'error' icon if not found
    }

    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: 45,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.deepPurple,
              ),
              child: Icon(
                _getIconData(iconname),
                color: Colors.white,
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
