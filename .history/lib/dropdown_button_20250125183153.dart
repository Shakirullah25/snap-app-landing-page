import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snap_landing_page/colors.dart';

class CustomPopupButton extends StatelessWidget {
  final String hint;
  final List<PopupMenuEntry<String>> items;
  final void Function(String?) onSelected;

  const CustomPopupButton({
    super.key,
    required this.hint,
    required this.items,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          hint,
          style: GoogleFonts.epilogue(
            color: AppColors.almostBlack,
            fontSize: 15,
          ),
        ),
        const SizedBox(width: 4),
        PopupMenuButton<String>(
          offset: Offset(-, 40),
          color: Colors.white,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.almostBlack,
            size: 18,
          ),
          itemBuilder: (context) => items,
          onSelected: onSelected,
          padding: EdgeInsets.zero, // Ensures alignment with text
        ),
      ],
    );
  }
}

//     return DropdownButton<String>(
//       focusColor: Colors.transparent,
//       isDense: true,
//       alignment: Alignment.centerLeft,
//       //menuMaxHeight: 50,
//       underline: Container(),
//       icon: Image.asset(
//         "lib/assets/image/arrow_down-chevron.png",
//         width: 20, 
//         height: 20,
//         fit: BoxFit.contain,
//         ),
//       dropdownColor: Colors.white,
//       itemHeight: 48,
//       menuWidth: 160,
//       hint: Text(
//         hint,
//         style: GoogleFonts.epilogue(
//           color: AppColors.almostBlack,
//           fontSize: 15,
//         ),
//       ),
//       items: items,
//       onChanged: onChanged,
//       value: value,
//     );
//   }
// }
