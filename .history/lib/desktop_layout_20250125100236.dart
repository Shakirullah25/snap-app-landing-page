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
          padding: const EdgeInsets.all(8.0),
          child: CommonAppBar(
            title: "snap",
            actions: [
              DropdownButton<String>(
                hint: Text("Features"),
                items: [
                  DropdownMenuItem(
                    child: Text("Todo List"),
                    value: "Feature 1",
                  ),
                  DropdownMenuItem(
                    child: Text("Calendars"),
                    value: "Feature 2",
                  ),
                  DropdownMenuItem(
                    child: Text("Reminders"),
                    value: "Feature 3",
                  ),
                  DropdownMenuItem(child: Text(""), value: "Feature 4"),
                ],
                onChanged: (String? newValue) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
