import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snap_landing_page/colors.dart';

class CustomDropdownButton extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem<String>> items;
  final String optionalValue;
  final void Function(String?) onChanged;
  final String va;

  const CustomDropdownButton({
    super.key,
    required this.hint,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text(
        hint,
        style: GoogleFonts.epilogue(
          color: AppColors.almostBlack,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      // hint: Text("Features",
      // style: GoogleFonts.epilogue(
      //   color: AppColors.almostBlack,
      //   fontSize: 18,
      //   fontWeight: FontWeight.bold,
      // ),
      // ),
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
