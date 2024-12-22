import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extension/sizebox_extension.dart';
import 'package:url_launcher/link.dart';
import 'dart:math' as math;

class FollowMeOn extends HookWidget {
  const FollowMeOn({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final controller1 = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final controller2 = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final controller3 = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        40.hGap,
        Text(
          'You can also follow me on:',
          style: TextStyle(
            color: Colors.white,
            fontSize: deviceWidth * 0.0135,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        8.hGap,
        Row(
          children: [
            SocialsCard(
              controller: controller1,
              deviceWidth: deviceWidth,
              url: "https://www.linkedin.com/in/nabin-gurung",
              imgPath: "assets/images/linkedin.svg",
            ),
            8.wGap,
            SocialsCard(
              controller: controller2,
              deviceWidth: deviceWidth,
              url: "https://github.com/NabinGrz/NabinGrz",
              imgPath: "assets/images/github.svg",
            ),
            8.wGap,
            SocialsCard(
              controller: controller3,
              deviceWidth: deviceWidth,
              url: 'https://www.instagram.com/nabin.grzz',
              imgPath: "assets/images/instagram.svg",
            ),
          ],
        ),
      ],
    );
  }
}

class SocialsCard extends StatelessWidget {
  const SocialsCard({
    super.key,
    required this.controller,
    required this.deviceWidth,
    required this.url,
    required this.imgPath,
  });

  final AnimationController controller;
  final double deviceWidth;
  final String url;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => controller.forward(),
      onExit: (e) => controller.reverse(),
      // onExit: (e) => setState(() => hoveringOnLinkden = false),
      child: Link(
          target: LinkTarget.blank,
          uri: Uri.parse(url),
          builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: RotationTransition(
                  turns: Tween(begin: 0.0, end: -0.05).animate(controller),
                  child: SvgPicture.asset(
                    imgPath,
                    height: deviceWidth * 0.027,
                    width: deviceWidth * 0.027,
                    fit: BoxFit.contain,
                  ),
                ),
              )),
    );
  }
}
