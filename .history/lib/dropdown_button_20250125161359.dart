import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snap_landing_page/colors.dart';

class CustomDropdownButton extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem<String>> items;
  final String? optionalValue;
  final void Function(String?) onChanged;
  final String? value;

  const CustomDropdownButton({
    super.key,
    required this.hint,
    required this.items,
    this.optionalValue,
    required this.onChanged,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: DropdownButton<String>(
        focusColor: Colors.transparent,
        isDense: true,
        //menuMaxHeight: 50,
        underline: Container(),
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.almostBlack,
        ),
        dropdownColor: Colors.white,
        itemHeight: 48,
        menuWidth: 160,
        hint: Text(
          hint,
          style: GoogleFonts.epilogue(
            color: AppColors.almostBlack,
            fontSize: 15,
            //fontWeight: FontWeight.bold,
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
        value: value,
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
      ),
    );
  }
}
