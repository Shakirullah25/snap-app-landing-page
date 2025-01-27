import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  void _toggleLearnButton() {
    setState(() {
      _buttonOnPressed = !_buttonOnPressed;
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
                    fontSize: 14.5,
                    fontWeight: FontWeight.bold,
                    //height: 1.5,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _toggleLearnButton,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    backgroundColor: _buttonOnPressed
                        ? AppColors.almostWhite
                        : AppColors.almostBlack,
                    foregroundColor: _buttonOnPressed
                        ? AppColors.almostBlack
                        : AppColors.almostWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      side: BorderSide(
                        color: AppColors.almostBlack,
                      ),
                    ),
                  ),
                  child: Text(
                    "Learn more",
                    style: GoogleFonts.epilogue(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: _buttonOnPressed
                          ? AppColors.almostBlack
                          : AppColors.almostWhite,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SvgPicture.asset(
                      "lib/assets/image/client-databiz.svg",
                      width: 17,
                      height: 17,
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(
                      "lib/assets/image/client-audiophile.svg",
                      width: 17,
                      height: 17,
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(
                      "lib/assets/image/client-meet.svg",
                      width: 17,
                      height: 17,
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(
                      "lib/assets/image/client-maker.svg",
                      width: 17,
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
