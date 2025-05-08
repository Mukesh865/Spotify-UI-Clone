import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';




class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
            children: [
              Image.asset('assets/logo/intro_page_bg.png') ,
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.blackColor.withOpacity(0.3),
                      AppColors.blackColor,]
                ),
              )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: bottomLoginUI(context) ,
              ),
            ]
        ),
      ),
    );
  }
  Widget bottomLoginUI(BuildContext context)=> Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(bottom:40 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/logo/logo.svg",width: 53,height: 53),
          SizedBox(height: 11,),
          Text("Millions of Songs .\nFree on Spotify.",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center),
          SizedBox(height: 11,),
          custom_rounded_button(
            text: "Sign up free",
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.create_account);
            },
            bgColor: AppColors.primaryColor,),
          SizedBox(height: 11),
          custom_rounded_button(
            isoutlined: true,
            isIcon: "assets/logo/googlelogo.svg",
            text: "Continue with Google",
            onTap: () {},
            bgColor: AppColors.blackColor,
            textColor: AppColors.whiteColor,),
          SizedBox(height: 11),
          custom_rounded_button(
            isoutlined: true,
            isIcon: "assets/logo/facebook_logo.svg",
            text: "Continue with Facebook",
            onTap: () {},
            bgColor: AppColors.blackColor,
            textColor: AppColors.whiteColor,),
          SizedBox(height: 11),
          custom_rounded_button(
            isoutlined: true,
            isIcon: "assets/logo/apple_logo.svg",
            text: "Continue with Apple",
            onTap: () {},
            bgColor: AppColors.blackColor,
            textColor: AppColors.whiteColor,),
          TextButton(onPressed: (){}, child: Text("Log in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),))

        ],
      ),
    ),
  );
}