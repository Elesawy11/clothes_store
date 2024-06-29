import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/images.dart';

class AdvertismentWidget extends StatefulWidget {
  const AdvertismentWidget({super.key});

  @override
  State<AdvertismentWidget> createState() => _AdvertismentWidgetState();
}

class _AdvertismentWidgetState extends State<AdvertismentWidget> {
  Timer? timer;
  ScrollController scrollController = ScrollController();
  int currentScrollIndex = 0;
  int autoScrollIncrement = 1;
  double itemExtent = 500;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 5), (_) {
      autoScrollIncrement = currentScrollIndex == 0
          ? 1
          : currentScrollIndex == imageList.length - 1
              ? -1
              : autoScrollIncrement;
      currentScrollIndex += autoScrollIncrement;
      animateToIndex(currentScrollIndex);
      setState(() {});
    });
  }

  void animateToIndex(int index) {
    scrollController.animateTo(
      index * itemExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.builder(
        itemCount: imageList.length,
        controller: scrollController,
        itemExtent: itemExtent,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              fit: BoxFit.fill,
              imageList[index],
            ),
          );
        },
      ),
    );
  }
}

List<String> imageList = [
  Assets.assetsImagesImage1,
  Assets.assetsImagesImage2,
  Assets.assetsImagesImage3,
];
