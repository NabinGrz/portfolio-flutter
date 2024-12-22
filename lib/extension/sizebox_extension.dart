import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedShape on num {
  SizedBox get hGap => SizedBox(
        height: toDouble().h,
      );
  SizedBox get wGap => SizedBox(
        width: toDouble().w,
      );
}
