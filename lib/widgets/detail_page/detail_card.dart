import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(-0, 3))
            ],
            color: const Color.fromARGB(255, 255, 255, 255)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/tshirt.jpg',
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
                            const SizedBox(width: 60),
                            const Text(
                              '36 шт',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizeWidget(
                textSize: 'XS',
              ),
              const SizedBox(
                height: 15,
              ),
              const SizeWidget(
                textSize: 'S',
              ),
              const SizedBox(
                height: 15,
              ),
              const SizeWidget(
                textSize: 'S',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    super.key,
    required this.textSize,
  });

  final String textSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textSize,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffEDF0F8),
                ),
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.blue,
                        ),
                      ),
                      const Column(
                        children: [
                          Text(
                            '12 шт',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          Text('15 600 ₽'),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
