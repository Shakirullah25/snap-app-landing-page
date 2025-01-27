import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        backgroundColor: AppColors.almostWhite,
        elevation: 0,
        width: 250,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close,
                  size: 25,
                  color: AppColors.almostBlack,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: CustomPopupButton(
                      onSelected: (value) {
                        // Handle selection
                      },
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
                  ),
                  ListTile(
                    title: CustomPopupButton(
                      onSelected: (value) {
                        // Handle selection
                      },
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/image/image-hero-mobile.png",
                width: 300,
                height: 300,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
