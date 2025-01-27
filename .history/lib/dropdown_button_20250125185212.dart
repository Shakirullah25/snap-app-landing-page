import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:snap_landing_page/colors.dart';

class CustomPopupButton extends StatefulWidget {
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
  State<CustomPopupButton> createState() => _CustomPopupButtonState();
}

class _CustomPopupButtonState extends State<CustomPopupButton> {
  final bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.hint,
          style: GoogleFonts.epilogue(
            color: AppColors.almostBlack,
            fontSize: 15,
            fontWeight: _isMenuOpen ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        const SizedBox(width: 4),
        PopupMenuButton<String>(
          menuPadding: EdgeInsets.all(8),
          offset: Offset(-130, 50),
          color: Colors.white,
          icon: Icon(
            _isMenuOpen ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
            color: AppColors.almostBlack,
            size: 18,
          ),
          itemBuilder: (context) => widget.items,
          onSelected: (value) {
            Widget
            
          }
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
