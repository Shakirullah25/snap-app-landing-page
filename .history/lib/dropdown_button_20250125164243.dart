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
    return DropdownButton<String>(
      focusColor: Colors.transparent,
      isDense: true,
    
      //menuMaxHeight: 50,
      underline: Container(),
      icon: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Image.asset(
          "lib/assets/image/arrow_down-chevron.png",
          width: 20, 
          height: 20,
          fit: BoxFit.contain,
          ),
      // icon: Icon(
      //   Icons.keyboard_arrow_down,
      //   color: AppColors.almostBlack,
      // ),
      ),
      dropdownColor: Colors.white,
      itemHeight: 48,
      menuWidth: 160,
      hint: Text(
        hint,
        style: GoogleFonts.epilogue(
          color: AppColors.almostBlack,
          fontSize: 15,
        ),
      ),
      items: items,
      onChanged: onChanged,
      value: value,
    );
  }
}
