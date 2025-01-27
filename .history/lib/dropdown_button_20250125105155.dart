import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snap_landing_page/colors.dart';

class CustomDropdownButton extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem<String>> items;
  // final String optionalValue;
  // final void Function(String?) onChanged;
  // final String value;

  const CustomDropdownButton({
    super.key,
    required this.hint,
    required this.items,
    required this.optionalValue,
    required this.onChanged,
    required this.value,
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
      items: items,
      onChanged: onChanged,
      // items: [
      //   DropdownMenuItem(
      //     child: Text(value),
      //     value: optionalValue,
      //   ),
      //   DropdownMenuItem(
      //     child: Text(value),
      //     value: optionalValue,
      //   ),
      //   DropdownMenuItem(
      //     child: Text(value),
      //     value: optionalValue,
      //   ),
      //   DropdownMenuItem(
      //     child: Text(value),
      //     value: optionalValue,
      //   ),
      // ],
      // onChanged: onChanged,
    );
  }
}
