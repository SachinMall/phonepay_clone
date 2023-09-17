import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepay_clone/Wealth.dart';
import 'package:phonepay_clone/history.dart';
import 'package:phonepay_clone/stores.dart';

import 'homepagewidget/Home_recharge_bill.dart';
import 'homepagewidget/homeadd.dart';
import 'homepagewidget/homecards.dart';
import 'homepagewidget/homepageQR.dart';
import 'homepagewidget/homepage_Insurance.dart';
import 'homepagewidget/homepage_Sponsored.dart';
import 'homepagewidget/homepage_UPI.dart';

import 'homepagewidget/homepage_card.dart';
import 'homepagewidget/homepage_switch.dart';
import 'homepagewidget/homepage_travel.dart';
import 'rummy.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Container(
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
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomePageRecharge(
                          iconname: 'smartphone',
                          name: 'Mobile\nRecharge',
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const HomePageRecharge(
                          iconname: 'house',
                          name: 'Rent\nPayment',
                        ),
                        const HomePageRecharge(
                          iconname: 'rupee',
                          name: 'Loan\nRepayment',
                        ),
                        const HomePageRecharge(
                          iconname: 'local_gas_station',
                          name: 'Book A\nCylinder',
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 42,
                              width: 40,
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
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(6),
              height: 120,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sponsored Links",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomePageSponsored(
                          nextPage: Rummy(),
                          image: 'assets/images/ru.jpeg',
                          name: 'Rummy',
                        ),
                        HomePageSponsored(
                          nextPage: Rummy(),
                          image: 'assets/images/bu.jpg',
                          name: 'BuddyLoan',
                        ),
                        HomePageSponsored(
                          nextPage: Rummy(),
                          image: 'assets/images/mpl.jpg',
                          name: 'MPL',
                        ),
                        HomePageSponsored(
                          nextPage: HomePage(),
                          image: 'assets/images/baj.jpg',
                          name: 'Rummy',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(6),
              height: 205,
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
                  const Text(
                    "Insurance",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeInsurance(iconname: 'bike', name: 'Bike'),
                        HomeInsurance(iconname: 'car', name: 'Car'),
                        HomeInsurance(iconname: 'health', name: 'Health'),
                        HomeInsurance(iconname: 'accident', name: 'Accident'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const HomeInsurance(
                                iconname: 'term_life', name: 'Term Life'),
                            const HomeInsurance(
                                iconname: 'insurance', name: 'Travel'),
                            const HomeInsurance(
                                iconname: 'shield', name: 'Insurance\nRenewal'),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 42,
                                  width: 42,
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const HomePageCardsSlider(),
            Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(6),
              height: 120,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      offset: const Offset(0, 3),
                      spreadRadius: 2.0,
                      color: Colors.grey.withOpacity(0.4))
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Travel Bookings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomePageTravel(
                          nextpage: Stores(),
                          iconname: 'flights',
                          name: 'Flights',
                        ),
                        HomePageTravel(
                          nextpage: Wealth(),
                          iconname: 'bus',
                          name: 'Bus',
                        ),
                        HomePageTravel(
                          nextpage: History(),
                          iconname: 'trains',
                          name: 'Trains',
                        ),
                        HomePageTravel(
                          nextpage: HomePage(),
                          iconname: 'hotels',
                          name: 'Hotels',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(6),
              height: 125,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      offset: const Offset(0, 3),
                      spreadRadius: 2.0,
                      color: Colors.grey.withOpacity(0.4))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Switch",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const HomePageSwitch(
                          imagename: 'assets/images/d11.jpg',
                          name: 'Dream 11',
                        ),
                        const HomePageSwitch(
                          imagename: 'assets/images/download.jpg',
                          name: 'Swiggy',
                        ),
                        const HomePageSwitch(
                          imagename: 'assets/images/fast.jpg',
                          name: 'Buy FASTTag',
                        ),
                        Column(
                          children: [
                            Container(
                              height: 42,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.deepPurple),
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
                  ),
                ],
              ),
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
