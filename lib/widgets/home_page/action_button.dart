import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade300,
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton(text: 'История\n продаж', icon: Icons.history),
            ActionButton(text: '    Список\n должников', icon: Icons.people),
            ActionButton(text: '     Мои\n расходы', icon: Icons.money_off),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon, size: 40), const SizedBox(height: 5), Text(text)],
    );
  }
}
