import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Lottie.asset(
              "assets/lottie/developer1.json",
              height: 50,
              width: 50,
            ),
            Image.asset(
              "assets/images/laptop.png",
              height: 50,
              width: 50,
            ),
          ],
        ),
      ],
    );
  }
}
