import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Итого',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('100 402 P')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(343, 56),
                    backgroundColor: Color(0xffffdd2d),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text(
                  'Продолжить',
                  style: const TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}
