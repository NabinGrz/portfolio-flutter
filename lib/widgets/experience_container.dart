import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/project_constants.dart';
import 'package:portfolio/extension/sizebox_extension.dart';
import 'package:portfolio/widgets/project_card.dart';

class ExperienceContainer extends StatelessWidget {
  final String date;
  final String designation;
  final String description;
  final String company;
  const ExperienceContainer({
    super.key,
    required this.date,
    required this.designation,
    required this.description,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Container(
      padding: REdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 19, 19, 19),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.grey,
          width: 0.1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (deviceWidth > 1000) ...{
            Expanded(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                    size: 18.h,
                  ),
                  4.wGap,
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          },
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (deviceWidth < 1000) ...{
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                        size: 18.h,
                      ),
                      4.wGap,
                      Text(
                        date,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  12.hGap,
                },
                Text(
                  designation,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                2.hGap,
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.device_laptop,
                      color: Colors.grey,
                      size: 16.w,
                    ),
                    Text(
                      company,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                8.hGap,
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.sp,
                  ),
                ),
                8.hGap,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "< >",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      " Technologies",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),
                8.hGap,
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xff262626),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Flutter",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
