import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  int selectedindex = 0;
  bool isPP1 = false;
  bool isPP2 = false;

  List<Widget> allPages = [];

  @override
  void initState() {
    super.initState();
    allPages = [part1UI(), part2UI(), part3UI(), part4UI()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        centerTitle: true,
        title: Text(
          'Create account',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        leading: InkWell(
          onTap: () {
            if (selectedindex > 0) {
              selectedindex--;
              setState(() {});
            } else {
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: SvgPicture.asset(
              'assets/icons/Left.svg',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            allPages[selectedindex],
            SizedBox(height: 21),
            Padding(
              padding: EdgeInsets.only(bottom: selectedindex < 3 ? 0 : 45),
              child: custom_rounded_button(
                onTap: () {
                  if (selectedindex < 3) {
                    selectedindex++;
                    setState(() {});
                  } else {
                    Navigator.pushNamed(context, AppRoutes.chooseArtist);
                  }
                },
                mWidth: selectedindex < 3 ? 100 : 200,
                text: selectedindex < 3 ? "Next" : "Create an Account",
                bgColor: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget part1UI() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "What’s your email?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      TextField(
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: getCreatedAccTextFieldDecoration(),
      ),
      SizedBox(height: 8),
      Text(
        "You’ll need to confirm this email later.",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    ],
  );

  Widget part2UI() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Create a password",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      TextField(
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: getCreatedAccTextFieldDecoration(),
      ),
      SizedBox(height: 8),
      Text(
        "Use atleast 8 characters.",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    ],
  );

  Widget part3UI() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "What’s your gender?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 11),
      Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        runSpacing: 11,
        spacing: 11,
        children: [
          custom_rounded_button(
            onTap: () {},
            text: "Male",
            bgColor: AppColors.primaryColor,
            isoutlined: true,
            textColor: Colors.white,
            mWidth: 100,
            mHeight: 34,
          ),
          custom_rounded_button(
            onTap: () {},
            text: "Female",
            bgColor: AppColors.primaryColor,
            isoutlined: true,
            textColor: Colors.white,
            mWidth: 100,
            mHeight: 34,
          ),
          custom_rounded_button(
            onTap: () {},
            text: "Not prefer to say",
            bgColor: AppColors.primaryColor,
            isoutlined: true,
            textColor: Colors.white,
            mWidth: 150,
            mHeight: 34,
          ),
          custom_rounded_button(
            onTap: () {},
            text: "Others",
            bgColor: AppColors.primaryColor,
            isoutlined: true,
            textColor: Colors.white,
            mWidth: 100,
            mHeight: 34,
          ),
        ],
      ),
    ],
  );

  Widget part4UI() => Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What’s your name?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        TextField(
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: getCreatedAccTextFieldDecoration(),
        ),
        SizedBox(height: 8),
        Text(
          "This appears on your spotify profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 21),
        Divider(color: AppColors.greyColor),
        SizedBox(height: 21),
        Text(
          'By tapping on “Create account”, you agree to the spotify Terms of Use.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 11,
          ),
        ),
        SizedBox(height: 6),
        TextButton(
          onPressed: () {},
          child: Text(
            'Terms of Use',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 11),
          ),
        ),
        SizedBox(height: 6),
        Text(
          'To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 11,
          ),
        ),
        SizedBox(height: 6),
        TextButton(
          onPressed: () {},
          child: Text(
            'Privacy Policy',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 11),
          ),
        ),
        RadioListTile.adaptive(
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            "Please send me news and offers from Spotify.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 11,
            ),
          ),
          value: isPP1,
          groupValue: false,
          onChanged: (value) {
            isPP1 = value!;
            setState(() {});
          },
        ),
        SizedBox(height: 6),
        RadioListTile.adaptive(
          controlAffinity: ListTileControlAffinity.trailing,
          title: Text(
            "Share my registration data with Spotify’s content providers for marketing purposes.Please send me news and offers from Spotify.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 11,
            ),
          ),
          value: isPP2,
          groupValue: false,
          onChanged: (value) {
            isPP2 = value!;
            setState(() {});
          },
        ),
      ],
    ),
  );
}
