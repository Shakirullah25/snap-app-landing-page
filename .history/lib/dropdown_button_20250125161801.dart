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
     alignment: Alignment.centerLeft, // Align the hint and items to the left
      icon: Padding(
        padding: const EdgeInsets.only(left: 4.0), // Adjust icon spacing
        child: Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.almostBlack,
          size: 20, // Reduce icon size
        ),
      ),
      items: items,
      onChanged: onChanged,
      value: value,
    );
  }
}
