import 'package:flutter/material.dart';
import 'package:snap_landing_page/dropdown_button.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'snap',
          style: GoogleFonts.epilogue(
            color: AppColors.almostBlack,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomDropdownButton(
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
                onChanged: (String? newValue) {
                  // Handle change
                },
                value: "1",
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('Desktop Layout'),
      ),
    );
  }
}