import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/widgets/home_page/action_button.dart';
import 'package:neobis_flutter_figma/widgets/home_page/bottom_nav_bar.dart';
import 'package:neobis_flutter_figma/widgets/home_page/grid_view_card.dart';
import 'package:neobis_flutter_figma/widgets/home_page/elevated_button.dart';
import 'package:neobis_flutter_figma/widgets/home_page/info_card.dart';
import 'package:neobis_flutter_figma/widgets/home_page/top_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TopButton(),
              SizedBox(
                height: 20,
              ),
              InfoCard(),
              GridViewCard(),
              SizedBox(height: 15),
              MyWidget(),
              SizedBox(height: 15),
              ElevatedButton(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarButton(),
    );
  }
}

class ElevatedButton extends StatelessWidget {
  const ElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AddButton(
            text: 'Добавить',
            icon: Icons.add_circle_outline,
            color: Colors.blue),
        SizedBox(width: 8),
        AddButton(
            text: 'Продать', icon: Icons.sell_outlined, color: Colors.green),
      ],
    );
  }
}
