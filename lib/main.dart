import 'package:flutter/material.dart';
import 'package:lunastro_app/features/login_page/get_started.dart';
import 'package:lunastro_app/features/login_page/topics.dart';
import 'package:lunastro_app/features/main_page/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TopicPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
