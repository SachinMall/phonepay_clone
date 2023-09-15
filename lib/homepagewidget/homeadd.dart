import 'package:flutter/material.dart';

class HomePageAdd extends StatefulWidget {
  final String iconname;
  final String name;
  const HomePageAdd({super.key, required this.iconname, required this.name});

  @override
  State<HomePageAdd> createState() => _HomePageAddState();
}

class _HomePageAddState extends State<HomePageAdd> {
  IconData _getIconData(String iconName) {
    // Map string icon names to IconData
    final iconData = {
      "account_balance_wallet": Icons.account_balance_wallet,
      "card_giftcard": Icons.card_giftcard,
      "share": Icons.share,
    };
    return iconData[iconName] ??
        Icons.error; // Return 'error' icon if not found
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 75,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blueAccent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _getIconData(widget.iconname),
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.name,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
