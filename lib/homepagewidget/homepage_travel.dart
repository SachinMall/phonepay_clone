import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageTravel extends StatefulWidget {
  final String name;
  final String iconname;
  final Widget nextpage;

  const HomePageTravel(
      {super.key,
      required this.name,
      required this.iconname,
      required this.nextpage});

  @override
  State<HomePageTravel> createState() => _HomePageTravelState();
}

class _HomePageTravelState extends State<HomePageTravel> {
  @override
  Widget build(BuildContext context) {
    IconData _getIconData(String iconname) {
      final IconData = {
        'flights': Icons.flight_takeoff,
        'bus': Icons.directions_bus,
        'trains': Icons.tram_sharp,
        'hotels': Icons.hotel
      };
      return IconData[iconname] ?? Icons.error;
    }

    return GestureDetector(
      onTap: () {
        Get.to(widget.nextpage);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white),
              width: 40,
              height: 40,
              child: Icon(
                _getIconData(widget.iconname),
                size: 30,
              )),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
