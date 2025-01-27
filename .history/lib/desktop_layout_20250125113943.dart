import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/dropdown_button.dart';

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
          const SizedBox(width: 20),
          
          // Implementation of DropdownButton
          CustomDropdownButton(
            onChanged: (value) {},
            hint: "Features",
            items: [
              DropdownMenuItem(
                child: Text("Todo List"),
                value: "1",
              ),
              DropdownMenuItem(
                child: Text("Calendar"),
                value: "2",
              ),
              DropdownMenuItem(
                child: Text("Reminders"),
                value: "3",
              ),
              DropdownMenuItem(
                child: Text("Planning"),
                value: "4",
              ),
            ],
          ),
          ],
        )
      ),
    );
  }
}

//title: "snap",
      //       actions: [
      //         CustomDropdownButton(
      //           onChanged: (value) {},
      //           hint: "Features",
      //           items: [
      //             DropdownMenuItem(
      //               child: Text("Todo List"),
      //               value: "1",
      //             ),
      //             DropdownMenuItem(
      //               child: Text("Calendar"),
      //               value: "2",
      //             ),
      //             DropdownMenuItem(
      //               child: Text("Reminders"),
      //               value: "3",
      //             ),
      //             DropdownMenuItem(
      //               child: Text("Planning"),
      //               value: "4",
      //             ),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),