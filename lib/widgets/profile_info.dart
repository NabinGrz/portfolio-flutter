import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/sizebox_extension.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Nabin Gurung',
              style: GoogleFonts.dmSans(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            6.wGap,
            Image.asset(
              "assets/images/verified.png",
              height: 20.w,
              width: 20.w,
            )
          ],
        ),
        2.hGap,
        Row(
          children: [
            Text(
              'Brings ideas to life with code!  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w100,
                height: 0,
              ),
            ),
            Text(
              '✨',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 14.sp,
                fontWeight: FontWeight.w100,
                height: 0,
              ),
            ),
          ],
        ),
        10.hGap,
        Text(
          'Working in Software development industry from past\n2+ years with deep experience in Flutter for\nmobile application development.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w200,
          ),
        )
      ],
    );
  }
}
