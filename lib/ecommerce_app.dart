import 'package:e_commerce_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/home_screen/presentation/views/home_view.dart';

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({super.key});

  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.red,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Image.asset(
              Assets.assetsImagesHome,
              height: 30.h,
              width: 30.w,
            ),
            icon: Image.asset(
              Assets.assetsImagesHome,
              height: 30.h,
              width: 30.w,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Image.asset(
              Assets.assetsImagesShop,
              height: 30.h,
              width: 30.w,
            ),
            icon: Image.asset(
              Assets.assetsImagesShop,
              height: 30.h,
              width: 30.w,
            ),
            label: 'Shope',
          ),
          NavigationDestination(
            icon: Image.asset(
              Assets.assetsImagesBag,
              height: 30.h,
              width: 30.w,
            ),
            label: 'Bag',
          ),
          NavigationDestination(
            icon: Image.asset(
              Assets.assetsImagesFavorite,
              height: 30.h,
              width: 30.w,
            ),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Image.asset(
              Assets.assetsImagesProfile,
              height: 30.h,
              width: 30.w,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: [
        const HomeView(),
        const Center(
          child: Text('Shope Screen'),
        ),
        const Center(
          child: Text('Bag Screen'),
        ),
        const Center(
          child: Text('Favorite Screen'),
        ),
        const Center(
          child: Text('Profile Screen'),
        ),
      ][currentPageIndex],
    );
  }
}
