import 'package:flutter/material.dart';
import 'package:my_list_app/list_test_page.dart';

class MyListTestApp extends StatelessWidget {
  const MyListTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyListTestPage(),
    );
  }
}