import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(180, 100),
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Column(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
