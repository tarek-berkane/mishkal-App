import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/SampleRoutes.dart';
import 'package:mishkal/src/screens/PageSettings.dart';
import 'package:mishkal/src/screens/PageText.dart';
import 'package:mishkal/src/screens/ProjectsScreen.dart';
import 'package:mishkal/src/screens/aboutScreen.dart';
import 'package:mishkal/src/screens/favoriteScreen.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mishkal/src/screens/homeScreen.dart';
import 'package:mishkal/src/screens/SplashScreen.dart';


class MyApp extends AppMVC {
  MyApp({Key key}) : super(key: key);

  @override

  /// This is 'the View' for this application.
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      ArchSampleRoutes.home: (BuildContext context) => new HomeScreen(),
      ArchSampleRoutes.pageText: (BuildContext context) => new PageText(),
      ArchSampleRoutes.pageProjects: (BuildContext context) => new ProjectsScreen(),
      ArchSampleRoutes.pageSettings: (BuildContext context) => new PageSettings(),
      ArchSampleRoutes.pageAbout: (BuildContext context) => new AboutPage(),
      ArchSampleRoutes.pageFavorites: (BuildContext context) => new FavoriteS()

    },
  );
}
}
