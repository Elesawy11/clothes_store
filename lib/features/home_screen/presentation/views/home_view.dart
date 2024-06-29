import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/images.dart';
import '../../../../core/utils/spacer.dart';
import 'widgets/advertisment_widget.dart';
import 'widgets/custom_product_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
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
                      style: TextStyle(
                          fontSize: 34.sp, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'you\'ve never seen it before!!',
                      style: TextStyle(color: ColorManager.grey9B),
                    ),
                    verticalSpace(22),
                    const CustomProductListView(),
                    verticalSpace(40)
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

List<String> imageList = [
  Assets.assetsImagesImage1,
  Assets.assetsImagesImage2,
  Assets.assetsImagesImage3,
];
