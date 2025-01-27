import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/ResponsiveLayout/mobile_drawer.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/mobile_custom_pop_button.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  bool _buttonOnPressed = false;

  void _toggleLearnButton() {
    setState(() {
      _buttonOnPressed = !_buttonOnPressed;
    });
  }

  final List<String> svgAssets = [
    "lib/assets/image/client-databiz.svg",
    "lib/assets/image/client-audiophile.svg",
    "lib/assets/image/client-meet.svg",
    "lib/assets/image/client-maker.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: AppBar(
        backgroundColor: AppColors.almostWhite,
        elevation: 0,
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "snap",
            style: GoogleFonts.epilogue(
              color: AppColors.almostBlack,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: MobileDrawer(),
      body: LayoutBuilder(
        builder: (_, constraints) {

        },
        
      ),
    );
  }
}

