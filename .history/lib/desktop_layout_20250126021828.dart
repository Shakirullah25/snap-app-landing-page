import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/app_bar_content.dart';
import 'package:snap_landing_page/colors.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: AppBar(
        backgroundColor: AppColors.almostWhite,
        elevation: 0,
        toolbarHeight: 60,
        title: AppBarContent(),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 140)
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    left: 130,
                  ),
                  child: Text(
                    'Make\nremote work',
                    style: GoogleFonts.epilogue(
                      color: AppColors.almostBlack,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      height: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
