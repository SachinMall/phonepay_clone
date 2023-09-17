import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepagewidget/helppage.dart';

class NotificationIcon extends StatefulWidget {
  const NotificationIcon({super.key});

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const HelpPage());
            },
            icon: const Icon(
              Icons.help_outline,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            NotificationModel(
              containerHeight: 110,
              iconname: 'flight',
              name:
                  'Use Code MMTPHONEPE to get\nup to ₹5000 Off* on flight tickets.',
              subname: 'Book now on PhonePe.',
            ),
            NotificationModel(
              containerHeight: 130,
              iconname: 'wallet',
              name:
                  'Update: There would be changes\nin wallet usage, comin into effect\nafter 45 days.',
              subname: 'Click to know more.',
            ),
            NotificationModel(
              containerHeight: 128,
              iconname: 'split',
              name:
                  'Split your group expenses\naccurately with just a click. Let us\ndo the math for you!',
              subname: 'Try PhonePe Split Expense.',
            ),
            NotificationModel(
              containerHeight: 110,
              iconname: 'accident',
              name: 'Get up to ₹20 Lakh Accident\nCover in a few clicks.',
              subname: 'Insure now.',
            )
          ],
        ),
      ),
    );
  }
}

class NotificationModel extends StatelessWidget {
  final String name;
  final String subname;
  final String iconname;
  final double containerHeight;
  const NotificationModel({
    Key? key,
    required this.name,
    required this.subname,
    required this.iconname,
    required this.containerHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData _getIconData(String iconname) {
      final iconData = {
        'flight': Icons.flight_takeoff,
        'wallet': Icons.wallet,
        'split': Icons.call_split,
        'accident': Icons.medication
      };
      return iconData[iconname] ?? Icons.error;
    }

    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(6),
        height: containerHeight,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    _getIconData(iconname),
                    size: 30,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        subname,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 120,
                        child: Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                height: 50,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: const Color.fromARGB(
                                        255, 222, 216, 234)),
                                child: const Center(
                                  child: Text(
                                    "DELETE",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.red),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                height: 50,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white),
                                child: const Center(
                                  child: Text(
                                    "CANCEL",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
