import 'package:flutter/material.dart';

class TextFieldButton extends StatelessWidget {
  const TextFieldButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffedf0f8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff51637B)),
        ),
      ),
    );
  }
}
