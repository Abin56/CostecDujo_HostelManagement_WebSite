
import 'package:flutter/material.dart';
import 'package:hostel_management_website/view/colors/colors.dart';
import 'package:hostel_management_website/view/fonts/google_poppins.dart';

class CostechDujoLogoWidget extends StatelessWidget {
  const CostechDujoLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 16, 36, 77),
      height: 130,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                    height: 80,
                    width: 60,
                    child: Image.asset('assets/images/leptonlogo.png')),
                Column(
                  children: [
                    Row(
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
              ],
            ),
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
