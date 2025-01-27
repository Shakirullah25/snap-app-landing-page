import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/app_bar_content.dart';
import 'package:snap_landing_page/colors.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  bool _buttonOnPressed = false;

  void toggleLearnButton () {
    setState(() {
      _buttonOnPressed = !_
    });
  }

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
            padding: const EdgeInsets.only(
              top: 110,
              left: 120,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Make\nremote work',
                  style: GoogleFonts.epilogue(
                    color: AppColors.almostBlack,
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  "Get your team in sync, no matter your location.\nStreamline processes, create team rituals, and\nwatch productivity soar.",
                  style: GoogleFonts.epilogue(
                    color: AppColors.mediumGray,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    //height: 1.5,
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
