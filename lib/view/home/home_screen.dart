import 'package:flutter/material.dart';
import 'package:hostel_management_website/view/colors/colors.dart';
import 'package:hostel_management_website/view/home/side_menuBar/is_desktop.dart';
import 'package:hostel_management_website/view/home/side_menuBar/widget/costecDujologo.dart';
import 'package:hostel_management_website/view/widgets/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  int index;
   HomeScreen({
    required this.index,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveWebSite.isDesktop(context) ? null : AppBar(),
        drawer: ResponsiveWebSite.isDesktop(context)
            ? null
            : Drawer(
                surfaceTintColor: cBlack,
                backgroundColor: cWhite,
                child: ListView(
                  children: const [
                    CostechDujoLogoWidget(),
                    SideBarMenuItemsWidget(),
                  ],
                ),
              ),
        body: SafeArea(
          child: ResponsiveWebSite.isDesktop(context)
              ? WebSideBaeWidget(
                  index: index,
                )
              : Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                ),
        ));
  }
}
