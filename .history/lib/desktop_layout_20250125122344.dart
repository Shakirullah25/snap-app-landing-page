import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snap_landing_page/dropdown_button.dart';
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
            const SizedBox(width: 40),

            // Implementation of DropdownButton
            CustomDropdownButton(
              onChanged: (value) {},
              hint: "Features",
              items: [
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Image.asset("lib/asset/image/checklist_16782875.png", width: 20,)
                        // SvgPicture.asset(
                        //   "lib/asset/image/icon-todo.svg",
                        //   width: 20,
                        //   height: 20,
                        //   color: AppColors.almostBlack,
                        // ),
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
                  value: "1",
                ),
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Calendar",
                      style: GoogleFonts.epilogue(
                        color: AppColors.almostBlack,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  value: "2",
                ),
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Reminders",
                      style: GoogleFonts.epilogue(
                        color: AppColors.almostBlack,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  value: "3",
                ),
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Planning",
                      style: GoogleFonts.epilogue(
                        color: AppColors.almostBlack,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  value: "4",
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Desktop Layout'),
      ),
    );
  }
}
