import 'package:flutter/material.dart';

void main() {
  runApp(const AppMainWidget());
}

class AppMainWidget extends StatelessWidget {
  const AppMainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap App Landing Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const SnapMainPage(title: 'Snap'),
    );
  }
}

