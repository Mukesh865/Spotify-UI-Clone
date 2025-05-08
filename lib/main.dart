import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/ui/splash_screen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    routes: AppRoutes.getroutes() ,
    initialRoute: AppRoutes.splash_screen,
    );
  }
}

