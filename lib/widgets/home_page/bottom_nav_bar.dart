import 'package:flutter/material.dart';

class BottomNavBarButton extends StatelessWidget {
  const BottomNavBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Товары',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Магазин',
        ),
      ],
    );
  }
}
