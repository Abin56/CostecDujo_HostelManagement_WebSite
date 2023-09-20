import 'package:flutter/material.dart';
import 'package:hostel_management_website/view/home/home_screen.dart';
import 'package:hostel_management_website/view/widgets/responsive/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWebSite(
          mobile: HomeScreen(), tablet: HomeScreen(), desktop: HomeScreen()),
    );
  }
}
