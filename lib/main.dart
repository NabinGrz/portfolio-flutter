import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/extension/sizebox_extension.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/my_work.dart';
import 'widgets/download_CV_and_hire_button.dart';
import 'widgets/follow_me_on.dart';
import 'widgets/info_widget.dart';
import 'widgets/profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 990),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Nabin Gurung',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: GoogleFonts.dmSans().fontFamily),
            home: const MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final contentMaxWidth = deviceWidth * 0.55;
    return Scaffold(
      backgroundColor: const Color(0xff16191d),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 400),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  100.hGap,
                  InfoWidget(profileBackgroundWidth: contentMaxWidth),
                  40.hGap,
                  const DownloadCVAndHireButton(),
                  const FollowMeOn(),
                  62.hGap,
                  const MyWork(),
                  200.hGap,
                  const Center(child: Footer())
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: deviceHeight * 0.18,
              width: deviceWidth * 0.12,
              // color: Colors.white,
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                "assets/images/robot.svg",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: deviceWidth * 0.009,
              right: deviceWidth * 0.009,
              top: deviceHeight * 0.009,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 35.h,
                  width: 35.w,
                  child: SvgPicture.asset(
                    "assets/images/robot2.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                  width: 35.w,
                  child: LottieBuilder.asset(
                    "assets/lottie/developer1.json",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
