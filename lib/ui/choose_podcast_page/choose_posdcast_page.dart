import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/domain/ui_helper.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';
import 'package:spotify_clone/ui/custom_widget/custom_rounded_button.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_button.dart';
import 'package:spotify_clone/ui/custom_widget/rounded_img_card.dart';
import 'package:spotify_clone/ui/dashboard/dash_board_screen.dart';

class ChoosePodcast extends StatelessWidget {
  List<List<Map<String, dynamic>>> mPodcast = [

   [ {"imgpath": "assets/podcast_img/Album=For Emma.png", "name": "Emma"},
     {"imgpath": "assets/podcast_img/Album=SOS.png", "name": "SOS"},
     {
       "imgpath": "assets/podcast_img/Album=Starry Night.png",
       "name": "More into Crimes",
     },
   ],
    [{
      "imgpath": "assets/podcast_img/Album=Stranger in the Alps.png",
      "name": "Stranger in the Alps",
    },
      {"imgpath": "assets/podcast_img/Artist=Bon Iver.png", "name": "Bon Iver"},
      {"imgpath": "assets/podcast_img/Artist=Peggy Gou.png", "name": "More in Comedy"},
    ],
    [{
      "imgpath": "assets/podcast_img/Artist=Pheobe Bridgers.png",
      "name": "Pheobe Bridgers",
    },
      {"imgpath": "assets/podcast_img/Artist=SZA.png", "name": "SZA"},
      {"imgpath": "assets/podcast_img/Playlist=Blend.png", "name": "More in Relationships"},
    ],
    [{
      "imgpath": "assets/podcast_img/Playlist=Discover Weekly.png",
      "name": " Discover Weekly",
    },
      {
        "imgpath": "assets/podcast_img/Playlist=Electronica Mix.png",
        "name": " Electronica Mix",
      },
      {
        "imgpath": "assets/podcast_img/Playlist=Serotonin.png",
        "name": " Serotonin",
      },
    ],
    [
      {
        "imgpath": "assets/podcast_img/Playlist=Top Songs.png",
        "name": "Top Songs",
      },
      {"imgpath": "assets/podcast_img/Album=For Emma.png", "name": "Emma"},
      {
        "imgpath": "assets/podcast_img/Playlist=Discover Weekly.png",
        "name": " Discover Weekly",
      },
    ],
  ]; // List<Map<String, dynamic>>
  // List<Map<String, dynamic>>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(backgroundColor: AppColors.blackColor),
      body: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Now choose some \npodcasts.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 11),
                SizedBox(
                  width: 369,
                  height: 50,
                  child: TextField(decoration: getSearchTextFieldDecoration()),
                ),
              ],
            ),
            SizedBox(height: 11),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: mPodcast.length,
                    itemBuilder: (_, index) {
                      return SizedBox(
                        height: 170,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: mPodcast[index].length,
                          itemBuilder: (_, index2) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Column(
                                children: [
                                  index2 == 2  ? Container(
                                    padding: EdgeInsets.symmetric(horizontal: 11),
                                    margin: EdgeInsets.only(bottom: 30),
                                    width: 120,
                                    height: 120 ,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.primaries[Random().nextInt(Colors.primaries.length-1)]),
                                    child: Center(
                                      child: Text(mPodcast[index][index2]['name'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
                                    ),
                                    ) : Column(
                                    children: [
                                      RoundedImgCard(
                                        mWidth: 120,
                                        mHeight: 120,
                                        imgpath: mPodcast[index][index2]['imgpath'],
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        mPodcast[index][index2]['name'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
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
                      child:Center(
                        child: custom_rounded_button(
                          mWidth: 100,

                          text: "Done",
                          onTap: (){
                            Navigator.pushReplacementNamed(context, AppRoutes.dashBoard);

                          },
                        ),
                      )
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
