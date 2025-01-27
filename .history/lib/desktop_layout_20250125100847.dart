import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/common_app_bar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CommonAppBar(
            title: "snap",
            actions: [
              DropdownButton()
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownButton extends StatelessWidget {
  const DropdownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text("Features",
      style: GoogleFonts.epilogue(
        color: AppColors.almostBlack,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      ),
      items: [
        DropdownMenuItem(
          child: Text("Todo List"),
          value: "Feature 1",
        ),
        DropdownMenuItem(
          child: Text("Calendar"),
          value: "Feature 2",
        ),
        DropdownMenuItem(
          child: Text("Reminders"),
          value: "Feature 3",
        ),
        DropdownMenuItem(
          child: Text("Planning"),
          value: "Feature 4",
        ),
      ],
      onChanged: (String? newValue) {},
    );
  }
}
