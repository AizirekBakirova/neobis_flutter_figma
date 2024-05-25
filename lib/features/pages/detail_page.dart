import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neobis_flutter_figma/widgets/detail_page/bottom_widget.dart';
import 'package:neobis_flutter_figma/widgets/detail_page/chip_button.dart';
import 'package:neobis_flutter_figma/widgets/detail_page/detail_card.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Указать количество',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ChipButton(),
              DetailCard(),
              SizedBox(
                height: 130,
              ),
              Divider(),
              BottomWidget()
            ],
          ),
        ),
      ),
    );
  }
}
