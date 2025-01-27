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
                ),
                DropdownMenuItem(
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
                DropdownMenuItem(
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
                DropdownMenuItem(
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
                        const SizedBox(width: 8,)
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
          ],
        ),
      ),
      body: Center(
        child: Text('Desktop Layout'),
      ),
    );
  }
}
