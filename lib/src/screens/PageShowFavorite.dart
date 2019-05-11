import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';

class PageSF extends StatelessWidget {
  String _text1, _text2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Con.getColor('appbar')),
        title: Text(
          'العناصر',
          style: TextStyle(
              color: Color(Con.getColor('text')), fontSize: Con.getSizeTitle()),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(Con.getColor('background')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Container(width: double.infinity,),
            Container(
              margin: EdgeInsets.all(5),
              color: Color(Con.getColor('backgroundText')),
              child: Text(
                'النص : $_text1',
                softWrap: true,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: Con.getSize(),
                    color: Color(Con.getColor('text'))),
              ),
            ),
            Container(
               margin: EdgeInsets.all(5),
              color: Color(Con.getColor('backgroundText')),
              child: Text(
                'التشكيل : $_text2',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: Con.getSize(),
                    color: Color(Con.getColor('text'))),
              ),
            )
          ],
        ),
      ),
    );
  }

  PageSF(this._text1, this._text2);
}
