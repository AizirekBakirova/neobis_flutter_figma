import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    'Указать количество',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ChipButton(),
              const DetailCard(),
              const SizedBox(
                height: 130,
              ),
              const Divider(),
              const BottomWidget()
            ],
          ),
        ),
      ),
    );
  }
}
