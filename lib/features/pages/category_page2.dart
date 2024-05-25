import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/widgets/category_page/card_widget.dart';
import 'package:neobis_flutter_figma/widgets/category_page/info_card2.dart';
import 'package:neobis_flutter_figma/widgets/category_page/top_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TopWidget(),
              InfoCard2(),
              CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
