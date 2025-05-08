import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/splash_screen/splashScreen.dart';
import 'package:spotify_clone/intro_page/intro_page.dart';
import 'package:spotify_clone/ui/create_account/create_account_page.dart';
import 'package:spotify_clone/ui/choose_artist_page/choose_artist_page.dart';
import 'package:spotify_clone/ui/choose_podcast_page/choose_posdcast_page.dart';
import 'package:spotify_clone/ui/dashboard/dash_board_screen.dart';

class AppRoutes {
  static const String splash_screen = '/splash';
  static const String intro_page = '/intro';
  static const String create_account = '/create_account';
  static const String chooseArtist = '/ChooseArtist';
  static const String choosePodcast = '/ChoosePodcast';
  static const String dashBoard = '/DashBoard';

  static Map<String, Widget Function(BuildContext)> getroutes() => {
    splash_screen: (context) => SplashScreen(),
    intro_page: (context) => IntroPage(),
    create_account: (context) => CreateAccountPage(),
    chooseArtist: (context) => ChooseArtist(),
    choosePodcast: (context) => ChoosePodcast(),
    dashBoard: (context) => DashBoardPage(),
  };
}
