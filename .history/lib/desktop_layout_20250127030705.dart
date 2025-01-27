import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/app_bar_content.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:url_launcher/url_launcher.dart';

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

  final List<String> svgAssets = [
    "lib/assets/image/client-databiz.svg",
    "lib/assets/image/client-audiophile.svg",
    "lib/assets/image/client-meet.svg",
    "lib/assets/image/client-maker.svg",
  ];

  Future<void> _launchURL() async {
    const url = "https://www.frontendmentor.io/challenges";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  Future<void> _launchMyURL() async {
    const url = "https://x.com/Shakirullah25";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.almostWhite,
        appBar: AppBar(
          backgroundColor: AppColors.almostWhite,
          elevation: 0,
          toolbarHeight: 60,
          title: const AppBarContent(),
        ),
        body: Row(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
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
                  const SizedBox(height: 60),
                  Row(
                    children: svgAssets.map((asset) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset(
                          asset,
                          width: 20,
                          height: 20,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 70, bottom: 50),
                child: Image.asset(
                  "lib/assets/image/image-hero-desktop.png",
                  width: 480,
                  height: 480,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          color: AppColors.almostWhite,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: GoogleFonts.epilogue(
                          color: AppColors.almostBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(text: "Challenge by "),
                          TextSpan(
                            text: " Frontend Mentor",
                            style: GoogleFonts.epilogue(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = _launchURL,
                          ),
                        ],
                      ),
                      
                      
                    ],
                  ),
                ),
                RichText(
               
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: GoogleFonts.epilogue(
                          color: AppColors.almostBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        children: []
                    
              ],
            ),
          ),
        ));
  }
}



TextSpan(text: "Coded by "),
                      TextSpan(
                        text: " Shakirullah25",
                        style: GoogleFonts.epilogue(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = _launchMyURL,
                      ),