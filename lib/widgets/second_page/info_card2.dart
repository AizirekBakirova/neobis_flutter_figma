import 'package:flutter/material.dart';

class InfoCard2 extends StatelessWidget {
  const InfoCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Моя точка',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Text('Проход 12г'),
          const Text('Контейнер 454'),
        ],
      ),
    );
  }
}
