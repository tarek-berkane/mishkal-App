import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/SampleRoutes.dart';

class CardShape extends StatelessWidget {
  const CardShape(
    this.textShow,
    this.image,
    this.routePage, {
    Key key,
  }) : super(key: key);
  final String textShow;
  final String image;
  final String routePage;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadiusDirectional.circular(25),
      elevation: 10,
      child: InkWell(
        onTap: () {
          //TODO push 6 Pages by Name
          if (routePage == ArchSampleRoutes.pageSettings)
            Navigator.of(context)
                .pushReplacementNamed(ArchSampleRoutes.pageSettings);
          else
            Navigator.pushNamed(context, routePage);
          print('you click me');
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  colors: [Color(Con.getColor('card1')), Color(Con.getColor('card2'))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 80,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              Text(
                textShow,
                style: TextStyle(fontSize: Con.getSizeTitle()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
