import 'package:flutter/material.dart';
import 'package:snap_landing_page/desktop_layout.dart';

void main() {
  runApp(const AppMainWidget());
}

class AppMainWidget extends StatelessWidget {
  const AppMainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snap App Landing Page',
      theme: ThemeData(
        primaryColor: Colors.black,
        useMaterial3: true,
      ),
      home: const SnapMainPage(),
    );
  }
}
