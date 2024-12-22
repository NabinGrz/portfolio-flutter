import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCVAndHireButton extends StatefulWidget {
  const DownloadCVAndHireButton({
    super.key,
  });

  @override
  State<DownloadCVAndHireButton> createState() =>
      _DownloadCVAndHireButtonState();
}

class _DownloadCVAndHireButtonState extends State<DownloadCVAndHireButton> {
  bool isHoveringOnDownloadCV = false;
  bool isHoveringOnHireMe = false;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (e) => setState(() => isHoveringOnDownloadCV = true),
          onExit: (e) => setState(() => isHoveringOnDownloadCV = false),
          child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://drive.google.com/file/d/1Kv1AM3m0qyYEpdiXYaewmEDfio0x6kto/view'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: isHoveringOnDownloadCV
                          ? const BorderSide(color: Colors.white, width: 3)
                          : BorderSide.none,
                      minimumSize:
                          Size(deviceWidth * 0.07, deviceWidth * 0.032),
                      backgroundColor: const Color(0xffFE8652)),
                  onPressed: followLink,
                  child: Text(
                    'Download CV',
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: deviceWidth * 0.010,
                      fontWeight: FontWeight.w600,
                    ),
                  ))),
        ),
        const SizedBox(
          width: 10,
        ),
        MouseRegion(
          onEnter: (e) => setState(() => isHoveringOnHireMe = true),
          onExit: (e) => setState(() => isHoveringOnHireMe = false),
          child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://github.com/NabinGrz'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: isHoveringOnHireMe
                          ? const BorderSide(color: Color(0xffFE8652), width: 3)
                          : BorderSide.none,
                      minimumSize:
                          Size(deviceWidth * 0.07, deviceWidth * 0.032),
                      backgroundColor: Colors.white),
                  onPressed: () async {
                    final mailtoLink = Mailto(
                      to: ['lama.gurung.nabin@gmail.com'],
                    );
                    await launchUrl(Uri.parse('$mailtoLink'));
                  },
                  child: Text(
                    'Hire Me',
                    style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: deviceWidth * 0.010,
                      fontWeight: FontWeight.w600,
                    ),
                  ))),
        ),
      ],
    );
  }
}
