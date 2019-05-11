import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Con.getColor('background')),
      appBar: AppBar(
        backgroundColor: Color(Con.getColor('appbar')),
        centerTitle: true,
        title: Text(
          'مشاريع',
          style: TextStyle(
              color: Color(Con.getColor('text')), fontSize: Con.getSizeTitle()),
        ),
      ),
      body: ListView.builder(
        itemCount: Con.getListLength(),
        itemBuilder: (context, int a) {
          return Card(
            color: Color(Con.getColor('backgroundText')),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: InkWell(
              child: Container(
                  height: 65,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    Con.getName(a),
                    softWrap: true,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: Con.getSize(),
                        color: Color(Con.getColor('text')),
                        decoration: TextDecoration.underline),
                  )),
              onTap: () {
                launch(Con.getLInk(a));
              },
            ),
          );
        },
      ),
    );
  }
}
