import 'package:elevat_task/Core/servises/get_it_service.dart';
import 'package:elevat_task/Features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeView(),
    );
  }
}
