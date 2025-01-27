import 'package:flutter/material.dart';

class SnapMainPage extends StatelessWidget {
  const SnapMainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(title),
      ),
    );
  }
}
