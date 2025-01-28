import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_landing_page/colors.dart';
import 'package:snap_landing_page/mobile_custom_pop_button.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  String _selectedItem = '';

  void _setSelectedItem(String item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.almostWhite,
      elevation: 0,
      width: 250,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                size: 30,
                color: AppColors.almostBlack,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: MobileCustomPopButton(
                    onSelected: (value) {
                      _setSelectedItem('Features');
                    },
                    hint: "Features",
                    items: [
                      PopupMenuItem(
                        value: "1",
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "lib/assets/image/checklist_11455903.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Todo List",
                                style: GoogleFonts.epilogue(
                                  color: AppColors.mediumGray,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: "2",
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "lib/assets/image/calendar_591607.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Calendar",
                                style: GoogleFonts.epilogue(
                                  color: AppColors.mediumGray,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: "3",
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "lib/assets/image/alarm-bell_12391491.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Reminders",
                                style: GoogleFonts.epilogue(
                                  color: AppColors.mediumGray,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: "4",
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "lib/assets/image/clock_12476711.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Planning",
                                style: GoogleFonts.epilogue(
                                  color: AppColors.mediumGray,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  tileColor: _selectedItem == 'Features'
                      ? AppColors.mediumGray.withOpacity(0.1)
                      : Colors.transparent,
                ),
                ListTile(
                  title: MobileCustomPopButton(
                    onSelected: (value) {
                      _setSelectedItem('Company');
                    },
                    hint: "Company",
                    items: [
                      PopupMenuItem(
                        value: "1",
                        child: Text(
                          "History",
                          style: GoogleFonts.epilogue(
                            color: AppColors.mediumGray,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: "2",
                        child: Text(
                          "Our Team",
                          style: GoogleFonts.epilogue(
                            color: AppColors.mediumGray,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: "3",
                        child: Text(
                          "Blog",
                          style: GoogleFonts.epilogue(
                            color: AppColors.mediumGray,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  tileColor: _selectedItem == 'Company'
                      ? AppColors.mediumGray.withOpacity(0.1)
                      : Colors.transparent,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: MouseRegion(
                    onEnter: (_) => _setSelectedItem('Careers'),
                    onExit: (_) => _setSelectedItem(''),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          onPressed: () {
                            _setSelectedItem('Careers');
                          },
                          child: Text(
                            "Careers",
                            style: GoogleFonts.epilogue(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mediumGray,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  tileColor: _selectedItem == 'Careers'
                      ? AppColors.mediumGray.withOpacity(0.1)
                      : Colors.transparent,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: MouseRegion(
                    onEnter: (_) => _setSelectedItem('About'),
                    onExit: (_) => _setSelectedItem(''),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          onPressed: () {
                            _setSelectedItem('About');
                          },
                          child: Text(
                            "About",
                            style: GoogleFonts.epilogue(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.mediumGray,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  tileColor: _selectedItem == 'About'
                      ? AppColors.mediumGray.withOpacity(0.1)
                      : Colors.transparent,
                ),
                ListTile(
                  title: MouseRegion(
                    onEnter: (_) => _setSelectedItem('Login'),
                    onExit: (_) => _setSelectedItem(''),
                    child: TextButton(
                      onPressed: () {
                        _setSelectedItem('Login');
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.epilogue(
                          fontSize: 14,
                          color: AppColors.mediumGray,
                        ),
                      ),
                    ),
                  ),
                  tileColor: _selectedItem == 'Login'
                      ? AppColors.mediumGray.withOpacity(0.1)
                      : Colors.transparent,
                ),
                ListTile(
                  title: MouseRegion(
                    onEnter: (_) => _setSelectedItem('Register'),
                    onExit: (_) => _setSelectedItem(''),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _setSelectedItem('Register');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          backgroundColor: AppColors.almostWhite,
                          foregroundColor: Colors.grey[800],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            side: BorderSide(
                              color: AppColors.almostBlack,
                            ),
                          ),
                        ),
                        child: Text(
                          "Register",
                          style: GoogleFonts.epilogue(
                            fontSize: 14,
                            color: AppColors.mediumGray,
                          ),
                        ),
                      ),
                    ),
                  ),
                  tileColor: _selectedItem == 'Register'
                      ? AppColors.mediumGray.withOpacity(0.1)
                      : Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
