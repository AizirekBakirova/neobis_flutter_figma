import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/widgets/second_page/card_widget.dart';
import 'package:neobis_flutter_figma/widgets/second_page/info_card2.dart';
import 'package:neobis_flutter_figma/widgets/second_page/top_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [TopWidget(), InfoCard2(), CardWidget()],
          ),
        ),
      ),
    );
  }
}
