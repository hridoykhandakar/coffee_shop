import 'package:flutter/material.dart';

class NavigationDestinationItem extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  const NavigationDestinationItem({
    super.key,
    required this.icon,
    required this.selectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(icon, size: 24),
      selectedIcon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(selectedIcon, size: 24, color: Theme.of(context).primaryColor),
          const SizedBox(height: 6),
          Container(
            height: 5,
            width: 10,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
      label: "",
    );
  }
}
