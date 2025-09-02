import 'package:coffee_shop/views/cart_screen/cart_screen.dart';
import 'package:coffee_shop/views/favorite_screen/favorite_screen.dart';
import 'package:coffee_shop/views/home_screen/home_screen.dart';
import 'package:coffee_shop/views/home_screen/widgets/navigation_destination_item.dart';
import 'package:coffee_shop/views/notification_screen/notification_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          FavoriteScreen(),
          CartScreen(),
          NotificationScreen(),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTap,
        indicatorColor: Colors.transparent,
        destinations: [
          NavigationDestinationItem(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
          ),
          NavigationDestinationItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
          ),
          NavigationDestinationItem(
            icon: Icons.shopping_bag_outlined,
            selectedIcon: Icons.shopping_bag,
          ),
          NavigationDestinationItem(
            icon: Icons.notifications_none,
            selectedIcon: Icons.notifications,
          ),
        ],
      ),
    );
  }
}
