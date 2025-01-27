import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/common_app_bar.dart';

class SnapMainPage extends StatelessWidget {
  const SnapMainPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: CommonAppBar(title: title)
    );
  }
}
