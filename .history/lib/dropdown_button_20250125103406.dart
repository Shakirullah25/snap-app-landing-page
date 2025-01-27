import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snap_landing_page/colors.dart';

class CustomDropdownButton extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem<String>> items;
  final String value;



  const CustomDropdownButton({
    super.key, required this.hint, required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text(hint),
      // hint: Text("Features",
      // style: GoogleFonts.epilogue(
      //   color: AppColors.almostBlack,
      //   fontSize: 18,
      //   fontWeight: FontWeight.bold,
      // ),
      // ),
      items: [
        ...items,
      
      ],
      onChanged: (String? newValue) {},
    );
  }
}
