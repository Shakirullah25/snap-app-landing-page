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
  State<MobileCustomPopButton> createState() => _MobileCustomPopButtonState();
}

class _MobileCustomPopButtonState extends State<MobileCustomPopButton> {
  bool _isMenuOpen = false;
  bool _isHovered = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  void _setHovered(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovered(true),
      onExit: (_) => _setHovered(false),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.hint,
            style: GoogleFonts.epilogue(
              color: _isHovered ? AppColors.almostBlack : AppColors.mediumGray,
              fontSize: 12,
              fontWeight: _isMenuOpen ? FontWeight.bold : FontWeight.normal,
            ),
          ),
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
              widget.onSelected(value);
            },
            onOpened: _toggleMenu,
            onCanceled: _toggleMenu,
            padding: EdgeInsets.zero, // Ensures alignment with text
          ),
        ],
      ),
    );
  }
}