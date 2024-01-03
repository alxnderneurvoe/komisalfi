import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color light = const Color.fromARGB(255, 212, 149, 101);
Color brown = const Color.fromARGB(255, 103, 57, 31);
Color darkbrown = const Color.fromARGB(255, 50, 36, 26);
Color semibrown = const Color.fromARGB(255, 50, 31, 39);
Color lightbrown = const Color.fromARGB(255, 121, 79, 53);
Color white = const Color.fromARGB(255, 255, 255, 255);
Color black = const Color.fromARGB(255, 0, 0, 0);

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: lightbrown,
      selectedItemColor: darkbrown,
      unselectedItemColor: Colors.black,
      iconSize: 30,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        _buildNavItem(CupertinoIcons.house_fill, 0),
        _buildNavItem(Icons.favorite, 1),
        _buildNavItem(CupertinoIcons.bag_fill, 2),
        _buildNavItem(CupertinoIcons.bell_solid, 3),
      ],
    );
  }

  BottomNavigationBarItem _buildNavItem(
    IconData icon,
    int index,
  ) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.grey,
      ),
      activeIcon: Icon(
        icon,
        color: darkbrown,
      ),
      label: '',
    );
  }
}
