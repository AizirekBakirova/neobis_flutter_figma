import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/features/data/category_models.dart';
import 'package:neobis_flutter_figma/features/pages/detail_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return ProductCard(
              image: categoriesList[index].images,
            );
          }),
    );
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.image,
  });
  final String image;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isSelected = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPage(),
            ),
          );
        });
      },
      child: Card(
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
                  Checkbox(
                      activeColor: Colors.blue,
                      value: isSelected,
                      onChanged: (bool? value) {
                        setState(() {
                          isSelected = value!;
                        });
                      }),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Off-white, Футболка из рельефной ткани',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff1DB469)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('500 ₽',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            const SizedBox(width: 10),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff7F56F8)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('1 200 ₽',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            const SizedBox(width: 80),
                            const Text(
                              '54шт',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Icon(Icons.deblur),
                            Text('Склад',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff51637b))),
                            SizedBox(width: 150),
                            Text('120шт',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
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
      ),
    );
  }
}
