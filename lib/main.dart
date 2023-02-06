import 'package:app_day_1/pages/home_page.dart';
import 'package:app_day_1/pages/page_day_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: PageDayOne(),
        home: HomePage());
  }
}
