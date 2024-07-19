import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_summmer_7_quiz_app/cubits/square_sizing_cubit/squar_sizing_cubit.dart';

import 'package:iti_summmer_7_quiz_app/screens/play_with_statemanagement.dart';
import 'package:iti_summmer_7_quiz_app/screens/statemanagement_using_cubit.dart';

import 'dart:io' show Platform;

import 'package:iti_summmer_7_quiz_app/screens/statemanagement_using_setstate.dart';

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
      home: BlocProvider(
        create: (context) => SquareSizingCubit(),
        child: StatemanagementUsingCubit(),
      ),
    );
  }
}
