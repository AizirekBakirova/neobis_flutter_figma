import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Сегодня',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Text('7 дней'),
          const Text('Месяц'),
          const SizedBox(
            width: 60,
          ),
          const Text(
            'Календарь',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
