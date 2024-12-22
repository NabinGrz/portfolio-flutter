import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/project_constants.dart';
import 'package:portfolio/extension/sizebox_extension.dart';
import 'package:portfolio/widgets/project_card.dart';

import 'experience_container.dart';

class ProjectsAndExperienceTitle extends StatelessWidget {
  const ProjectsAndExperienceTitle({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.dmSans(
            color: const Color(0xFFFE8652),
            fontStyle: FontStyle.normal,
            fontSize: deviceWidth * 0.025,
            fontWeight: FontWeight.w900,
          ),
        ),
        8.hGap,
        Container(
          height: 4.h,
          width: 90.w,
          decoration: BoxDecoration(
              color: const Color(0xff3B83F6),
              borderRadius: BorderRadius.circular(50)),
        ),
        20.hGap,
        if (subTitle.isNotEmpty) ...{
          Text(
            subTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: deviceWidth * 0.012,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          18.hGap,
        }
      ],
    );
  }
}
