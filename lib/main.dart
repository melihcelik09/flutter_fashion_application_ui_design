import 'package:flutter/material.dart';
import 'package:flutter_fashion_application/ui/detail_screen.dart';
import 'package:flutter_fashion_application/ui/home_page.dart';

void main(List<String> args) {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {'/detail': (context) => const DetailPage()},
    );
  }
}
