import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Function(GlobalKey) onMenuTap;
  final GlobalKey servicesKey;
  final GlobalKey portfolioKey;
  final GlobalKey contactKey;

  const Header(
      {super.key,
      required this.onMenuTap,
      required this.servicesKey,
      required this.portfolioKey,
      required this.contactKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Company Name',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () => onMenuTap(servicesKey),
                  child: const Text('Services',
                      style: TextStyle(color: Colors.white))),
              TextButton(
                  onPressed: () => onMenuTap(portfolioKey),
                  child: const Text('Portfolio',
                      style: TextStyle(color: Colors.white))),
              TextButton(
                  onPressed: () => onMenuTap(contactKey),
                  child: const Text('Contact',
                      style: TextStyle(color: Colors.white))),
            ],
          ),
        ],
      ),
    );
  }
}
