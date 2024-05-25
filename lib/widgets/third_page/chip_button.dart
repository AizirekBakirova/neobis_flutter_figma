import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
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
                'Товар 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Text('Товар 2'),
          const Text('Товар 3'),
          const Text('Товар 4'),
          const Text('Товар 5'),
        ],
      ),
    );
  }
}
