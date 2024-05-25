import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/features/pages/category_page2.dart';
import 'package:neobis_flutter_figma/features/pages/detail_page.dart';
import 'package:neobis_flutter_figma/features/pages/home_page.dart';
import 'package:neobis_flutter_figma/features/pages/category_page.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CategoryPage(),
    );
  }
}
