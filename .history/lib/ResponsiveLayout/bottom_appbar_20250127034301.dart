import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:url_launcher/url_launcher.dart';

BottomAppBar bottomAppBar() {

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
    return BottomAppBar(
      height: 50,
      color: AppColors.almostWhite,
      child: SizedBox(
        child: LayoutBuilder(
           builder: (_, constraints) {
            return 
           },
         
        ),
      ),
    );
  }
  
  
