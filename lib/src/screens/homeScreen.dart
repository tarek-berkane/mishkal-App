import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/SampleRoutes.dart';
import 'package:mishkal/src/widget/CardShape.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.extent(2, 160),
  const StaggeredTile.extent(1, 160),
  const StaggeredTile.extent(1, 160),
  const StaggeredTile.extent(1, 160),
  const StaggeredTile.extent(1, 160),
];

List<Widget> _tiles = const <Widget>[
  const CardShape(
      'تشكيل النص', 'images/document.png', ArchSampleRoutes.pageText),
  const CardShape('المفضلة', 'images/fav.png', ArchSampleRoutes.pageFavorites),
  const CardShape(
      'مشاريع أخرى', 'images/lightbulb.png', ArchSampleRoutes.pageProjects),
  const CardShape(
      'اعدادات', 'images/settings.png', ArchSampleRoutes.pageSettings),
  const CardShape(
      'حول البرنامج', 'images/man-user.png', ArchSampleRoutes.pageAbout),
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(Con.getColor('background')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Container(
                  height: 120,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    'images/miskalphoto.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 530,
                child: StaggeredGridView.count(
                  controller: ScrollController(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  children: _tiles,
                  staggeredTiles: _staggeredTiles,
                ),
              )
            ],
          ),
        ));
  }
}
