import 'package:flutter/material.dart';
import 'package:hostel_management_website/view/colors/colors.dart';
import 'package:hostel_management_website/view/fonts/google_poppins.dart';
import 'package:hostel_management_website/view/widgets/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ResponsiveWebSite.isDesktop(context)
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color.fromARGB(255, 26, 47, 90),
                    child: ListView(
                      children: [
                        const CostechDujoLogoWidget(),
                        SizedBox(
                          height: 800,
                          child: ListView.separated(
                              itemBuilder: (context, index) {
                                return ListTile(
                                  iconColor: cWhite.withOpacity(0.6),
                                  leading: Icon(
                                    sideMenuICons[index],
                                    size: 13.2,
                                  ),
                                  title: GooglePoppinsWidgets(
                                    text: sideMenu[index],
                                    fontsize: 12.5,
                                    color: cWhite.withOpacity(0.6),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 05,
                                );
                              },
                              itemCount: sideMenu.length),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    color: cWhite,
                  ),
                )
              ],
            )
          : const AboutDialog(),
    ));
  }
}

class CostechDujoLogoWidget extends StatelessWidget {
  const CostechDujoLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 16, 36, 77),
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                  height: 80,
                  width: 60,
                  child: Image.asset('assets/images/leptonlogo.png')),
              Padding(
                padding: const EdgeInsets.only(top: 03),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GooglePoppinsWidgets(
                          text: "COSTECH",
                          fontsize: 15,
                          color: cWhite,
                          fontWeight: FontWeight.w600,
                        ),
                        GooglePoppinsWidgets(
                          text: " D U J O",
                          fontsize: 15,
                          color: cRed,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    GooglePoppinsWidgets(
                      text: "Hostel Management",
                      fontsize: 10,
                      color: cWhite.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 1,
            color: Color.fromARGB(255, 26, 47, 90),
          ),
          SizedBox(
            height: 48,
            child: Center(
              child: GooglePoppinsWidgets(
                text: "MTHSS Mens Hostel",
                fontsize: 11,
                color: const Color.fromARGB(255, 117, 200, 236),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> sideMenu = [
  'Attendence',
  'Food Manage',
  'Rooms Manage',
  'Leave Requests',
  'Visitors Pass',
  'Students Manage',
  'Students Payment',
  'Employee Manage',
  'Bill Manage',
  'Notice Board',
  'Settings',
  'Rules',
];
List<IconData> sideMenuICons = [
  Icons.format_list_numbered_sharp,
  Icons.no_food_outlined,
  Icons.bed_sharp,
  Icons.mail,
  Icons.confirmation_number_outlined,
  Icons.people,
  Icons.attach_money_outlined,
  Icons.people,
  Icons.receipt_long,
  Icons.keyboard_alt_outlined,
  Icons.settings,
  Icons.gavel,
];
