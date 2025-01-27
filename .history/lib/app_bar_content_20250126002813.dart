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
  bool _rePressed = false;
  bool _
  
  void _toggleButton() {
    setState(() {
      _buttonOnPressed = !_buttonOnPressed;
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
          onPressed: () {},
          child: Text(
            "Careers",
            style: GoogleFonts.epilogue(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: AppColors.mediumGray,
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {},
          child: Text(
            "About",
            style: GoogleFonts.epilogue(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: AppColors.mediumGray,
            ),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: _toggleButton,
          child: Text(
            "Login",
            style: GoogleFonts.epilogue(
              fontSize: 13,
              fontWeight:
                  _buttonOnPressed ? FontWeight.normal : FontWeight.bold,
              color: AppColors.mediumGray,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: _toggleButton,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: AppColors.almostWhite,
              foregroundColor:
                  _buttonOnPressed ? AppColors.almostBlack : Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                
              ),
              side: BorderSide(
                  color: _buttonOnPressed ? AppColors.almostBlack : Colors.red,

                ),
            ),
            //const SizedBox(width: 20),
            child: Text(
              "Register",
              style: GoogleFonts.epilogue(
                fontSize: 13,
                color:
                    _buttonOnPressed ? AppColors.almostBlack : Colors.red,
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