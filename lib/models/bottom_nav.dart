import 'package:flutter/material.dart';

class BottomNav {
  String label;
  IconData icon;

  BottomNav({required this.label, required this.icon});
}

List<BottomNav> BOTTOM_NAV_ITEMS = [
  BottomNav(label: 'Home', icon: Icons.home),
  BottomNav(label: 'Category', icon: Icons.category),
  BottomNav(label: 'Settings', icon: Icons.settings),
  BottomNav(label: 'Website', icon: Icons.web),
];
