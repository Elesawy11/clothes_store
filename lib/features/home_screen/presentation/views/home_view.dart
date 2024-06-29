// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
import 'package:e_commerce_app/core/utils/color_manager.dart';
import 'package:e_commerce_app/core/utils/images.dart';
import 'package:e_commerce_app/core/utils/spacer.dart';
import 'package:e_commerce_app/features/home_screen/presentation/views/widgets/advertisment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AdvertismentWidget(),
          verticalSpace(33),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New',
                  style:
                      TextStyle(fontSize: 34.sp, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'you\'ve never seen it before!!',
                  style: TextStyle(color: ColorManager.grey9B),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> imageList = [
  Assets.assetsImagesImage1,
  Assets.assetsImagesImage2,
  Assets.assetsImagesImage3,
];
