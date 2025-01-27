import 'package:flutter/material.dart';
import 'package:snap_landing_page/desktop_layout.dart';
import 'package:snap_landing_page/mobile_layout.dart';


class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= 1200) {
          return const DesktopLayout();
        } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1200) {
          return const TabletLayout();
        } else {
          return const MobileLayout();
        }
      },
    );
  }
}
