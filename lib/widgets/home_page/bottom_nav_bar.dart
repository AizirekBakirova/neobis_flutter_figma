import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/features/pages/category_page2.dart';
import 'package:neobis_flutter_figma/features/pages/home_page.dart';
import 'package:neobis_flutter_figma/features/pages/payment_page.dart';

class BottomNavBarButton extends StatefulWidget {
  const BottomNavBarButton({
    super.key,
  });

  @override
  State<BottomNavBarButton> createState() => _BottomNavBarButtonState();
}

class _BottomNavBarButtonState extends State<BottomNavBarButton> {
  int currentIndex = 0;
  final pages = [
    HomePage(),
    CategoryPage(),
    PaymentPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
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
            )
          ],
        ),
      ),
    );
  }
}
