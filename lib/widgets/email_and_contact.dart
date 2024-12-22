import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailAndContact extends StatelessWidget {
  final IconData icon;
  final String text;
  const EmailAndContact({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(
        //   "assets/images/$imagePath.png",
        //   height: deviceWidth * 0.014,
        //   width: deviceWidth * 0.014,
        //   fit: BoxFit.contain,
        // ),
        Icon(
          icon,
          size: deviceWidth * 0.014,
          color: Colors.white,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: deviceWidth * 0.011,
            height: 0,
          ),
        ),
      ],
    );
  }
}
