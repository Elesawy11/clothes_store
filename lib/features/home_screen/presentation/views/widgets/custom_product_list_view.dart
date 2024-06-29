import 'package:e_commerce_app/core/utils/spacer.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/images.dart';

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 312.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 230.h,
                  child: Stack(
                    clipBehavior: Clip.hardEdge,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.asset(
                          height: 200.h,
                          width: 150.w,
                          fit: BoxFit.fill,
                          Assets.assetsImagesClothes1,
                        ),
                      ),
                      Positioned(
                        right: 3,
                        top: 180,
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey,
                            size: 18.r,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        top: 8,
                        child: Container(
                          height: 24.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30.r)),
                          child: const Center(
                            child: Text(
                              'New',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 214,
                        child: RatingBar(
                          onRatingUpdate: (value) {},
                          minRating: 1,
                          maxRating: 5,
                          initialRating: 0,
                          itemSize: 20.r,
                          itemPadding: EdgeInsets.only(left: 4.w),
                          // ignoreGestures: true,
                          ratingWidget: RatingWidget(
                            full: const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            half: const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            empty: const Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(6),
                Text(
                  'Mongo Boy',
                  style: FontStyles.font11Regular.copyWith(
                    color: Colors.grey,
                  ),
                ),
                verticalSpace(4),
                Text(
                  'T-Shirt Scailing',
                  style: FontStyles.font16SemiBold,
                ),
                verticalSpace(4),
                Text(
                  '10\$',
                  style: FontStyles.font16SemiBold,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
