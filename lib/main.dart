import 'package:counter_cubit/counter_app_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(counterApp());
}

class counterApp extends StatelessWidget {
  const counterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterAppBody(),
    );
  }
}
