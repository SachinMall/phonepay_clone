import 'package:flutter/material.dart';

class HomePageRecharge extends StatefulWidget {
  final String name;
  final String iconname;

  const HomePageRecharge(
      {super.key, required this.name, required this.iconname});

  @override
  State<HomePageRecharge> createState() => _HomePageRechargeState();
}

class _HomePageRechargeState extends State<HomePageRecharge> {
  @override
  Widget build(BuildContext context) {
    IconData _getIconData(String iconname) {
      final IconData = {
        'light_bulb': Icons.lightbulb_outline,
        'credit_card': Icons.credit_card,
        'house': Icons.house,
        'shopping_bag': Icons.shopping_bag,
        'local_gas_station': Icons.local_gas_station,
        'smartphone': Icons.smartphone,
        'cast': Icons.cast
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
            size: 30,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.name,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
