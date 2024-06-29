import 'package:e_commerce_app/core/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyles {
  static TextStyle font11Regular = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16SemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font34Bold = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeightHelper.bold,
  );
}
