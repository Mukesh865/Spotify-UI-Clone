import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';
import 'package:spotify_clone/ui/custom_widget/rounded_img_card.dart';
import 'package:spotify_clone/ui/dashboard/Navigator/home_bootom_nav_page.dart';
import 'package:spotify_clone/ui/dashboard/Navigator/search_bottom_nav_page.dart';
import 'package:spotify_clone/ui/dashboard/Navigator/library_bottom_nav_page.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int selectedIndex = 0;
  List<Widget> mBottomNavBar = [
    HomeBottomNavPage(),
    SearchBottomNavPage(),
    LibraryBottomNavPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor
      ,bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (value) => setState(() => selectedIndex = value),
      iconSize: 20,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.greyColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.secondaryBlackColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Home_Solid.svg',
              color: Colors.grey,
              width: 22,
              height: 22,
            ),
            label: "Home",
            activeIcon: SvgPicture.asset(
              'assets/icons/Home_Solid.svg',
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Search_outline.svg',
              color: AppColors.greyColor,
              width: 22,
              height: 22,
            ),
            label: "Search",
            activeIcon: SvgPicture.asset(
              'assets/icons/Search_Solid.svg',
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Library_outline.svg',
              color: AppColors.greyColor,
              width: 22,
              height: 22,
            ),
            label: "Library",
            activeIcon: SvgPicture.asset(
              'assets/icons/Library_Solid.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
