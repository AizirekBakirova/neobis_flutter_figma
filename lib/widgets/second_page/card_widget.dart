import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ProductCard();
          }),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('№54931',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Checkbox(value: false, onChanged: (bool? value) {}),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset('assets/images/tshirt.jpg'),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Off-white, Футболка из рельефной ткани'),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text('500 ₽', style: TextStyle(color: Colors.green)),
                          SizedBox(width: 10),
                          Text('1 200 ₽',
                              style: TextStyle(color: Colors.purple)),
                          SizedBox(width: 130),
                          Text(
                            '54шт',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.deblur_outlined),
                          Text('Склад', style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 150),
                          Text('120шт'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
