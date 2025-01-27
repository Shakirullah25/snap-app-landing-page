import 'package:flutter/material.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/common_app_bar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.almostWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(le),
          child: CommonAppBar(title:"snap"),
        ),),
    );
  }
}
