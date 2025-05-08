import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class custom_rounded_button extends StatelessWidget {
  final VoidCallback onTap;
  double mWidth;
  double mHeight;
  Color bgColor;
  String text;
  String? isIcon;
  Color textColor;
  bool isoutlined = false;

  custom_rounded_button({
    super.key,
    required this.onTap,
    this.mWidth = 300,
    this.mHeight = 50,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
    this.isIcon,
    required this.text,
    this.isoutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mWidth,
        height: mHeight,
        child:
            isIcon != null
                ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(isIcon!, width: 40, height: 40),
                      Expanded(
                        child: Center(
                          child: Text(
                            text,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                : Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isoutlined ? Colors.transparent : bgColor,
          border:
              isoutlined
                  ? Border.all(
                    width: 1,
                    color: isoutlined ? Colors.white : Colors.transparent,
                  )
                  : null,
        ),
      ),
    );
  }
}
