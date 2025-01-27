import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/popup_button.dart';

class AppBarContent extends StatefulWidget {
  const AppBarContent({
    super.key,
  });

  @override
  State<AppBarContent> createState() => _AppBarContentState();
}

class _AppBarContentState extends State<AppBarContent> {
  bool _registerButtonPressed = false;
  bool _loginButtonPressed = false; 
  bool _aboutButtonPressed = false;
  bool _careersButtonPressed = false;
  
  void _toggleRegisterButton() {
    setState(() {
      _registerButtonPressed = !_registerButtonPressed;
      
    });
  }
  void _toggleLoginButton() {
    setState(() {
      _loginButtonPressed = !_loginButtonPressed;
      
    });
  }
  void _toggleAboutButton() {
    setState(() {
      _aboutButtonPressed = !_aboutButtonPressed;
      
    });
  }
  void _toggleCareersButton() {
    setState(() {
      _careersButtonPressed = !_careersButtonPressed;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "snap",
            style: GoogleFonts.epilogue(
              color: AppColors.almostBlack,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 40),
        // Implementation of DropdownButton
        CustomPopupButton(
          onSelected: (value) {},
          hint: "Features",
          items: [
            PopupMenuItem(
              value: "1",
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/assets/image/checklist_11455903.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Todo List",
                      style: GoogleFonts.epilogue(
                        color: AppColors.mediumGray,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PopupMenuItem(
              value: "2",
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/assets/image/calendar_591607.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Calendar",
                      style: GoogleFonts.epilogue(
                        color: AppColors.mediumGray,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PopupMenuItem(
              value: "3",
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/assets/image/alarm-bell_12391491.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Reminders",
                      style: GoogleFonts.epilogue(
                        color: AppColors.mediumGray,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PopupMenuItem(
              value: "4",
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/assets/image/clock_12476711.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Planning",
                      style: GoogleFonts.epilogue(
                        color: AppColors.mediumGray,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        CustomPopupButton(
          onSelected: (value) {},
          hint: "Company",
          items: [
            PopupMenuItem(
              value: "1",
              child: Text(
                "History",
                style: GoogleFonts.epilogue(
                  color: AppColors.mediumGray,
                  fontSize: 15,
                ),
              ),
            ),
            PopupMenuItem(
              value: "2",
              child: Text(
                "Our Team",
                style: GoogleFonts.epilogue(
                  color: AppColors.mediumGray,
                  fontSize: 15,
                ),
              ),
            ),
            PopupMenuItem(
              value: "3",
              child: Text(
                "Blog",
                style: GoogleFonts.epilogue(
                  color: AppColors.mediumGray,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: _toggleCareersButton,
          child: Text(
            "Careers",
            style: GoogleFonts.epilogue(
              fontSize: 13,
              fontWeight: _careersButtonPressed ? FontWeight.bold : FontWeight.normal,
              color: _careersButtonPressed ? AppColors.almostBlack : AppColors.mediumGray,
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: _toggleAboutButton,
          child: Text(
            "About",
            style: GoogleFonts.epilogue(
              fontSize: 13,
              fontWeight: _aboutButtonPressed ? FontWeight.bold : FontWeight.normal,
              color: AppColors.mediumGray,
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: _toggleLoginButton,
          child: Text(
            "Login",
            style: GoogleFonts.epilogue(
              fontSize: 13,
              fontWeight:
                  _loginButtonPressed ? FontWeight.bold :FontWeight.normal,
              color: AppColors.mediumGray,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: _toggleRegisterButton,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: AppColors.almostWhite,
              foregroundColor:
                  _registerButtonPressed ?  AppColors.almostBlack :AppColors.mediumGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                
              ),
              side: BorderSide(
                 color: _registerButtonPressed ? AppColors.almostBlack : AppColors.mediumGray,

                ),
              
            ),
            //const SizedBox(width: 20),
            child: Text(
              "Register",
              style: GoogleFonts.epilogue(
                fontSize: 13,
                color:
                    _registerButtonPressed ?  AppColors.almostBlack :AppColors.mediumGray,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


/*

 Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: _toggleButton,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: _buttonOnPressed
                  ? AppColors.almostBlack
                  : AppColors.almostWhite,
              foregroundColor: _buttonOnPressed
              ? AppColors.almostWhite
              : AppColors.mediumGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                side: BorderSide(
                  color: AppColors.almostBlack,
                ),
              ),
            ),
            //const SizedBox(width: 20),
            child: Text(
              "Register",
              style: GoogleFonts.epilogue(
                fontSize: 13,
                color: _buttonOnPressed
                ? AppColors.almostWhite
                : AppColors.mediumGray,
              ),
            ),
          ),
        ),
        */