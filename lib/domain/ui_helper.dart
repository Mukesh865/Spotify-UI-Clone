import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';

InputDecoration getCreatedAccTextFieldDecoration() => InputDecoration(
  contentPadding: EdgeInsets.zero,
  filled: true,
  fillColor: AppColors.greyColor,
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
  ),
);

InputDecoration getSearchTextFieldDecoration({
  IconData mIcon = Icons.search,
  Color bgColor = Colors.white,
  String mText = "Search",
}) => InputDecoration(

  filled: true,
  fillColor: bgColor,
  hintText: mText,
  hintStyle: TextStyle(color: Colors.black),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
  ),
);
