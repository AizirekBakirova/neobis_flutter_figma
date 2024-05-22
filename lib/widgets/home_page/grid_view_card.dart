import 'package:flutter/material.dart';

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: (1 / .6),
      shrinkWrap: true,
      children: [
        ButtonCard(
          title: 'Касса',
          value: '42 310 ₽',
          icon: Icons.account_balance_wallet,
          color: Colors.blue.shade50,
        ),
        ButtonCard(
          title: 'Продано',
          value: '120',
          icon: Icons.shopping_bag,
          color: Colors.purple.shade50,
        ),
        ButtonCard(
          title: 'Прибыль',
          value: '+32 000',
          icon: Icons.attach_money,
          color: Colors.green.shade50,
        ),
        ButtonCard(
          title: 'Расходы',
          value: '-2400',
          icon: Icons.receipt,
          color: Colors.red.shade50,
        ),
      ],
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    super.key,
    required this.color,
    required this.title,
    required this.value,
    required this.icon,
  });

  final Color color;
  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Icon(
                  icon,
                  size: 30,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
