import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/Text.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Con.getColor('backgroundText')),
      appBar: AppBar(
        title: Text('حول',
            style: TextStyle(
              color: Color(Con.getColor('text')),
              fontSize: Con.getSizeTitle(),
            )),
        backgroundColor: Color(Con.getColor('appbar')),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
           textA(0, Con.getSizeTitle(),'title', 1),
          textA(1, Con.getSize(),'text', 5),
           textA(2, Con.getSizeTitle(),'title', 1),
            textA(3, Con.getSizeTitle(),'title', 1),
            textA(4, Con.getSize(),'text', 5),
            textA(5, Con.getSizeTitle(),'title', 1),
            textA(6, Con.getSize(),'text', 5),
            textA(7, Con.getSizeTitle(),'title', 1),
             textA(8, Con.getSize(),'text', 5),
            textA(9, Con.getSizeTitle(),'title', 1),
            textA(10, Con.getSize(),'text', 5),
        ],),
      ),
    );
  }
  Widget textA(int num,double size,text,double t)=>Container(
    alignment: Alignment.centerRight,
    margin: EdgeInsets.only(bottom: t),
    child: Text(TextData.tachkile_about[num],textAlign: TextAlign.right,
    style: TextStyle(
      color:Color(Con.getColor(text)),
      fontSize: size
    ),),
  );
}
