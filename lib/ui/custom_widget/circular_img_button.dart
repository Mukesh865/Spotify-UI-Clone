import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';
import 'package:spotify_clone/ui/choose_podcast_page/choose_posdcast_page.dart';

class MyCirularImgBg extends StatelessWidget{
  double mWidth;
  double mHeight;
  String imgpath;
  bool isSelected;

  MyCirularImgBg(
  {
     this.mWidth = 100,
     this.mHeight = 100,
    required this.imgpath,
    this.isSelected= false,
}
      );

   @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
        border: Border.all(
          strokeAlign: BorderSide.strokeAlignCenter,
          color: isSelected ? AppColors.primaryColor: Colors.transparent,
          width: isSelected ? 2 : 0,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(imgpath)),
      ),
      child: isSelected ?  Center(
        child: CircleAvatar(
          radius: mWidth/2,
          backgroundColor: Colors.black.withOpacity(0.3),
            child: Icon(Icons.done, color: Colors.white, size: 20)),
      ): Container() ,
    );
  }

}