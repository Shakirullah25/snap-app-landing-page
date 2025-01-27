import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/popup_button.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.almostWhite,
              ),
              child: Text(
                'Menu',
                style: GoogleFonts.epilogue(
                  color: AppColors.almostBlack,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: CustomPopupButton(
                onSelected: (value) {
                  // Handle selection
                },
                hint: "Features",
                items: [
                  // ...existing code...
                ],
              ),
            ),
            ListTile(
              title: CustomPopupButton(
                onSelected: (value) {
                  // Handle selection
                },
                hint: "Company",
                items: [
                  // ...existing code...
                ],
              ),
            ),
            ListTile(
              title: TextButton(
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
            ),
            ListTile(
              title: TextButton(
                onPressed: () {},
                child: Text(
                  "About",
                  style: GoogleFonts.epilogue(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColors.mediumGray,
                  ),
                ),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: GoogleFonts.epilogue(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: AppColors.mediumGray,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: AppColors.almostWhite,
                    foregroundColor: Colors.grey[800],
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
                    "Register",
                    style: GoogleFonts.epilogue(
                      fontSize: 12,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleC(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/image/image-hero-mobile.png",
                width: 240,
                height: 240,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Text(
                'Make\nremote work',
                textAlign: TextAlign.center,
                style: GoogleFonts.epilogue(
                  color: AppColors.almostBlack,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Get your team in sync, no matter your location.\nStreamline processes, create team rituals, and\nwatch productivity soar.",
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    child: Image.asset(
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
      ),
    );
  }
}
