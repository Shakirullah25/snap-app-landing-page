import 'package:flutter/material.dart';
import 'package:snap_landing_page/colors.dart';

class SnapMainPage extends StatelessWidget {
  const SnapMainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: AppBar(
        backgroundColor: AppColors.almostWhite,
        title: Text(title, style: GoogleFonts.epilo,),
      ),
    );
  }
}
