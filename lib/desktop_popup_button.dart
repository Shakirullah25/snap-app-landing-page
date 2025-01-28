import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';

class DesktopPopupButton extends StatefulWidget {
  final String hint;
  final List<PopupMenuEntry<String>> items;
  final void Function(String?) onSelected;

  const DesktopPopupButton({
    super.key,
    required this.hint,
    required this.items,
    required this.onSelected,
  });

  @override
  State<DesktopPopupButton> createState() => _DesktopCustomPopupButtonState();
}

class _DesktopCustomPopupButtonState extends State<DesktopPopupButton> {
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
          menuPadding: const EdgeInsets.all(8),
          offset: const Offset(-120, 40),
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