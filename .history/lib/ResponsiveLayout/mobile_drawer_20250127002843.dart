class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.almostWhite,
      elevation: 0,
      width: 250,
      shape: RoundedRectangleBorder(
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
              icon: Icon(
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
                      // Handle selection
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
                ),
                ListTile(
                  title: MobileCustomPopButton(
                    onSelected: (value) {
                      // Handle selection
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
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextButton(
                        onPressed: () {},
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
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextButton(
                        onPressed: () {
                          //Navigator.of(context).pop();
                        },
                        child: Text(
                          "About",
                          // textAlign: TextAlign.start,
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
                ListTile(
                  title: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.epilogue(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        color: AppColors.mediumGray,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
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
                          //fontWeight: FontWeight.bold,
                          color: AppColors.mediumGray,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
