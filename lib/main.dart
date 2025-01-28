import 'package:flutter/material.dart';
import 'package:snap_landing_page/ResponsiveLayout/loading_screen.dart';
import 'package:snap_landing_page/ResponsiveLayout/responsive_screen.dart';

void main() {
  runApp(const AppMainWidget());
}

class AppMainWidget extends StatelessWidget {
  const AppMainWidget({super.key});

  Future<void> _loadResources() async {
    // Simulating a delay for loading resources
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snap App Landing Page',
      theme: ThemeData(
        primaryColor: Colors.black,
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: _loadResources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else {
            return const ResponsiveLayout();
          }
        },
      ),
    );
  }
}

