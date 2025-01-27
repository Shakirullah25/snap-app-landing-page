import 'package:flutter/material.dart';
import 'package:snap_landing_page/popup_button.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: AppBar(
        backgroundColor: AppColors.almostWhite,
        elevation: 0,
        toolbarHeight: 80,
        title: Row(
          children: [
            Text(
              "snap",
              style: GoogleFonts.epilogue(
                color: AppColors.almostBlack,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 50),
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
                            color: AppColors.almostBlack,
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
                            color: AppColors.almostBlack,
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
                            color: AppColors.almostBlack,
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
                            color: AppColors.almostBlack,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            CustomPopupButton(
              onSelected: (value) {},
              hint: "Company",
              items: [
                PopupMenuItem(
                  value: "1",
                  child: Text(
                    "History",
                    style: GoogleFonts.epilogue(
                      color: AppColors.almostBlack,
                      fontSize: 15,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: "2",
                  child: Text(
                    "Our Team",
                    style: GoogleFonts.epilogue(
                      color: AppColors.almostBlack,
                      fontSize: 15,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: "3",
                  child: Text(
                    "Blog",
                    style: GoogleFonts.epilogue(
                      color: AppColors.almostBlack,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                "Careers",
                style: GoogleFonts.epilogue(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: AppColo
                )
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Desktop Layout'),
      ),
    );
  }
}
