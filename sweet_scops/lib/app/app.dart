import 'package:flutter/material.dart';
import 'package:sweet_scops/views/homeView.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sweet Scops",
      home: HomeView(),
    );
  }
}
