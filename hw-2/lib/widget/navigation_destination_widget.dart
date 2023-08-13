import 'package:flutter/material.dart';

class NavigationDestinationWidget extends StatelessWidget {
  const NavigationDestinationWidget({
    super.key,
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(icon),
      selectedIcon: Icon(selectedIcon),
      label: label,
    );
  }
}
