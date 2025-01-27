import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:url_launcher/url_launcher.dart';

Widget bottomAppBar() {
  Future<void> launchURL() async {
    const url = "https://www.frontendmentor.io/challenges";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  Future<void> launchMyURL() async {
    const url = "https://x.com/Shakirullah25";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launchUrl(
        mode: kIsWeb
            ? LaunchMode.platformDefault
            : LaunchMode.externalApplication,
        webOnlyWindowName: "_blank", // opens in a new tab,
        Uri.parse(
          url,
        ),
      );
    } else {
      throw "Could not launch $url";
    }
  }

  return LayoutBuilder(
    builder: (_, constraints) {
      double availableWidth = constraints.maxWidth;
      double fontSize;
      double bottomAppBarSize;
      if (availableWidth >= 1200) {
        // Desktop mode
        fontSize = availableWidth * 0.015;
      } else {
        // Mobile mode
        fontSize = availableWidth * 0.032;
      }

      if (availableWidth >= 1200) {
        bottomAppBarSize = availableWidth * 0.12;
      } else {
        bottomAppBarSize = availableWidth * 0.15;
      }

      return BottomAppBar(
        height: 70,
        color: AppColors.almostWhite,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: GoogleFonts.epilogue(
                        color: AppColors.almostBlack,
                        fontSize: fontSize,
                      ),
                      children: [
                        TextSpan(text: "Challenge by "),
                        TextSpan(
                          text: " Frontend Mentor",
                          style: GoogleFonts.epilogue(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = launchURL,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: AppColors.mediumGray,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.epilogue(
                    color: AppColors.almostBlack,
                    fontSize: fontSize,
                  ),
                  children: [
                    TextSpan(text: "Coded by "),
                    TextSpan(
                      text: "Shakirullah25",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = launchMyURL,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
