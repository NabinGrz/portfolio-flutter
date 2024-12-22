import 'package:flutter/material.dart';
import 'package:portfolio/extension/sizebox_extension.dart';

import 'email_and_contact.dart';
import 'profile_info.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.profileBackgroundWidth,
  });

  final double profileBackgroundWidth;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        deviceWidth < 600
            ? const SizedBox.shrink()
            : Container(
                height: deviceWidth * 0.2,
                width: deviceWidth,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/coding_background.png"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(),
                ),
              ),
        SizedBox(
          height: deviceHeight * 0.038,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: (deviceWidth * 0.042) + 5,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: deviceWidth * 0.042,
                backgroundImage: const AssetImage(
                  "assets/images/profile.jpg",
                ),
              ),
            ),
            20.wGap,
            const ProfileInfo(),
          ],
        ),
        20.hGap,
        const EmailAndContact(
            text: "Email: lama.gurung.nabin@gmail.com", icon: Icons.email),
        6.hGap,
        const EmailAndContact(
          text: "Phone: +977-9846458568",
          icon: Icons.call,
        ),
      ],
    );
  }
}
