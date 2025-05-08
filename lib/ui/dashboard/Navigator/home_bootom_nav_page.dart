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

class HomeBottomNavPage extends StatelessWidget{
  const HomeBottomNavPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [

        ],
      ),
    );
  }}