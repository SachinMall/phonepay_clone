import 'package:flutter/material.dart';

class HomeInsurance extends StatefulWidget {
  final String name;
  final String iconname;

  const HomeInsurance({super.key, required this.name, required this.iconname});

  @override
  State<HomeInsurance> createState() => _HomeInsuranceState();
}

class _HomeInsuranceState extends State<HomeInsurance> {
  @override
  Widget build(BuildContext context) {
    IconData _getIconData(String iconname) {
      final IconData = {
        'bike': Icons.two_wheeler,
        'car': Icons.directions_car,
        'health': Icons.monitor_heart,
        'accident': Icons.medical_services,
        'term_life': Icons.local_fire_department,
        'insurance': Icons.airplane_ticket,
        'shield': Icons.shield
      };
      return IconData[iconname] ?? Icons.error;
    }

    return Column(
      children: [
        InkWell(
          onTap: () {
            print("object");
          },
          child: Icon(
            _getIconData(
              widget.iconname,
            ),
            color: Colors.deepPurple,
            size: 35,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
