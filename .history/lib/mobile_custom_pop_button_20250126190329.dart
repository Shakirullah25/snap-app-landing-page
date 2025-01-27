import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';

class MobileCustomPopButton extends StatefulWidget {
  final String hint;
  final List<PopupMenuEntry<String>> items;
  final void Function(String?) onSelected;

  const MobileCustomPopButton({
    super.key,
    required this.hint,
    required this.items,
    required this.onSelected,
  });

  @override
  State<MobileCustomPopButton> createState() => _CustomPopupButtonState();
}

class _CustomPopupButtonState extends State<CustomPopupButton> {
  bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
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
            color: AppColors.mediumGray,
            fontSize: 12,
            fontWeight: _isMenuOpen ? FontWeight.bold : FontWeight.normal,
          ),
        ),
       // const SizedBox(width: 4),
        PopupMenuButton<String>(
          menuPadding: EdgeInsets.all(8),
          offset: Offset(-120, 40),
          color: Colors.white,
          icon: Icon(
            _isMenuOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: AppColors.mediumGray,
            size: 18,
          ),
          itemBuilder: (context) => widget.items,
          onSelected: (value) {
            _toggleMenu();
          },
          onOpened: _toggleMenu,
          onCanceled: _toggleMenu,
          padding: EdgeInsets.zero, // Ensures alignment with text
        ),
      ],
    );
  }
}