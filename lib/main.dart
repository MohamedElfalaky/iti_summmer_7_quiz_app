import 'package:flutter/material.dart';

import 'package:iti_summmer_7_quiz_app/screens/play_with_statemanagement.dart';

import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: PlayWithStatemanagement(),
    );
  }
}
