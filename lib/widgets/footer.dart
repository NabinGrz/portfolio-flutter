import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '© 2024 All rights reserved',
          style: TextStyle(
            color: Colors.white,
            fontSize: deviceWidth * 0.009,
            fontFamily: GoogleFonts.dmSans().fontFamily,
            fontWeight: FontWeight.w300,
            height: 0,
          ),
        ),
        Text(
          'Build with Flutter by Nabin Gurung',
          style: TextStyle(
            color: Colors.white,
            fontSize: deviceWidth * 0.009,
            fontFamily: GoogleFonts.dmSans().fontFamily,
            fontWeight: FontWeight.w300,
            height: 0,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
