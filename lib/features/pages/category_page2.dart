import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/widgets/category_page/card_widget.dart';
import 'package:neobis_flutter_figma/widgets/category_page/info_card2.dart';
import 'package:neobis_flutter_figma/widgets/category_page/top_widget.dart';
import 'package:neobis_flutter_figma/widgets/detail_page/select_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
