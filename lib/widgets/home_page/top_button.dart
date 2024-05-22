// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  const TopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Text(
                  'Торговая точка',
                ),
              ),
              const Row(
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
                      style: TextStyle(color: Colors.white, fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ))
            ]),
          )
        ],
      ),
    );
  }
}
