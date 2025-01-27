import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';

BottomAppBar bottomAppBar() {
    return BottomAppBar(
      height: 50,
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
                      // fontWeight: FontWeight.bold,
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = _launchURL,
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
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: "Coded by "),
                  TextSpan(
                    text: "Shakirullah25",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = _launchMyURL,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
