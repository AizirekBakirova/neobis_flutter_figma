import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Торговая точка',
                      ),
                      Row(
                        children: [
                          Text(
                            'Проход 456а',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.blue,
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Stack(children: [
                      const Icon(Icons.notifications_outlined),
                      Positioned(
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 12,
                              minHeight: 12,
                            ),
                            child: const Text(
                              '2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                              textAlign: TextAlign.center,
                            ),
                          ))
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
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
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
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
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / .6),
                shrinkWrap: true,
                children: [
                  _buttonCard('Касса', '42 310 ₽', Icons.account_balance_wallet,
                      Colors.blue.shade50),
                  _buttonCard('Продано', '120', Icons.shopping_bag,
                      Colors.purple.shade50),
                  _buttonCard('Прибыль', '+32 000', Icons.attach_money,
                      Colors.green.shade50),
                  _buttonCard(
                      'Расходы', '-2400', Icons.receipt, Colors.red.shade50),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _actionButton('История\n продаж', Icons.history),
                      _actionButton('    Список\n должников', Icons.people),
                      _actionButton('     Мои\n расходы', Icons.money_off),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _addButton('Добавить', Icons.add_circle_outline, Colors.blue),
                  const SizedBox(width: 8),
                  _addButton('Продать', Icons.sell_outlined, Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Товары',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Магазин',
          ),
        ],
      ),
    );
  }

  Widget _addButton(String text, IconData icon, Color color) {
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
            Icon(
              icon,
              color: Colors.white,
            ),
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

  Widget _actionButton(String text, IconData icon) {
    return Column(
      children: [Icon(icon, size: 40), const SizedBox(height: 5), Text(text)],
    );
  }

  Widget _buttonCard(String title, String value, IconData icon, Color color,
      {Color textColor = Colors.black}) {
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
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                const Spacer(),
                Icon(
                  icon,
                  size: 30,
                  color: textColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
