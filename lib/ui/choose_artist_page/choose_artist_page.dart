import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/choose_podcast_page/choose_posdcast_page.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';

class ChooseArtist extends StatefulWidget {

  ChooseArtist({super.key});

  @override
  State<ChooseArtist> createState() => _ChooseArtistState();
}

class _ChooseArtistState extends State<ChooseArtist> {
  List<int> mSelectedArtist = [];
 // List<int>
  List<Map<String, dynamic>> mArtist = [
    {"imgpath": "assets/images/Members.png", "name": "Members"},
    {"imgpath": "assets/images/Afterburner.png", "name": "Afterburner"},
    {
      "imgpath": "assets/images/#RecentlyPlayedArtwork.@.png",
      "name": "Recentlyplayed",
    },
    {"imgpath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    {"imgpath": "assets/images/Chon.png", "name": "chon"},
    {"imgpath": "assets/images/Coastin.png", "name": "Coastin"},
    {"imgpath": "assets/images/From the Fires.png", "name": "fires"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/Mothership.png", "name": "Mothership"},
    {"imgpath": "assets/images/The Office.png", "name": "Office"},
    {"imgpath": "assets/images/Time Bomb.png", "name": "Time"},
    {"imgpath": "assets/images/Tycho.png", "name": "Typo"},
    {"imgpath": "assets/images/The Office.png", "name": "Office"},
    {"imgpath": "assets/images/Time Bomb.png", "name": "Time"},
    {"imgpath": "assets/images/Chon.png", "name": "chon"},
    {"imgpath": "assets/images/Afterburner.png", "name": "Afterburner"},
    {"imgpath": "assets/images/Members.png", "name": "Members"},
    {"imgpath": "assets/images/Time Bomb.png", "name": "Time"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
    {"imgpath": "assets/images/MGK.png", "name": "MGk"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        centerTitle: true,
        title: Text(
          'Choose 3 or more artists you like.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 11),
            SizedBox(
              width: 369,
              height: 50,
              child: TextField(decoration: getSearchTextFieldDecoration()),
            ),
            SizedBox(height: 11),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 8.0),
                    child: GridView.builder(
                      itemCount: mArtist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 11,
                        mainAxisSpacing: 11,
                        childAspectRatio: 7 / 8,
                      ),
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              if(!mSelectedArtist.contains(index)){
                                mSelectedArtist.add(index);
                                setState(() {});
                              }else{
                                mSelectedArtist.remove(index);
                                setState(() {
                                });
                              }
                            },
                            child: Column(
                              children: [
                                MyCirularImgBg(imgpath: mArtist[index]['imgpath'], isSelected: mSelectedArtist.contains(index)),
                                SizedBox(height: 7),
                                Text(
                                  mArtist[index]['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          stops: [0.1, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                      child: mSelectedArtist.length >=3 ? Center(
                        child: custom_rounded_button(
                          mWidth: 100,

                          text: "Next",
                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.choosePodcast);

                          },
                        ),
                      ): Container() ,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
