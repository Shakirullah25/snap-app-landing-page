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
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          double width = screenWidth;
          double height = screenHeight;
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/assets/image/image-hero-mobile.png",
                    width: width * 0.90,
                    height: height * 0.40,
                    // width: 350,
                    // height: 350,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Make remote work',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.epilogue(
                      color: AppColors.almostBlack,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      // height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Get your team in sync, no matter your location. Streamline processes, create team rituals, and watch productivity soar.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.epilogue(
                      color: AppColors.mediumGray,
                      fontSize: 14.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _toggleLearnButton,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal:, vertical: 20),
                      backgroundColor: _buttonOnPressed
                          ? AppColors.almostWhite
                          : AppColors.almostBlack,
                      foregroundColor: _buttonOnPressed
                          ? AppColors.almostBlack
                          : AppColors.almostWhite,
                      shape: const RoundedRectangleBorder(
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: svgAssets.map((asset) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset(
                          asset,
                          width: width * 0.15,
                          //height: height * 0.03,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
