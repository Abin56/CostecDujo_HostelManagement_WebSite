// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hostel_management_website/view/colors/colors.dart';
import 'package:hostel_management_website/view/fonts/google_poppins.dart';
import 'package:hostel_management_website/view/home/home_screen.dart';
import 'package:hostel_management_website/view/home/side_menuBar/widget/costecDujologo.dart';

class WebSideBaeWidget extends StatelessWidget {
  int index;

  WebSideBaeWidget({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: const Color.fromARGB(255, 26, 47, 90),
            child: ListView(
              children: const [
                CostechDujoLogoWidget(),
                SideBarMenuItemsWidget()
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: pages[index],
        )
      ],
    );
  }
}

class SideBarMenuItemsWidget extends StatelessWidget {
  const SideBarMenuItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 26, 47, 90),
      height: 800,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen(index: index);
                  },
                ));
              },
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
List<Widget> pages = [
  Container(
    child: Center(
      child: Text(sideMenu[0]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[1]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[2]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[3]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[4]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[5]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[6]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[7]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[8]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[9]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[10]),
    ),
  ),
  Container(
    child: Center(
      child: Text(sideMenu[11]),
    ),
  ),
];
