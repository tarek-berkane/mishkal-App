import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/widget/PageTextSceenWidget/InputText.dart';
import 'package:mishkal/src/widget/PrograessIndicarorWidget.dart';
import 'package:mishkal/src/widget/ResultWidget.dart';

class PageText extends StatefulWidget {
  @override
  _PageTextState createState() => _PageTextState();
}

class _PageTextState extends State<PageText> {
  static String inputed, result = '';
  Widget resultWidget;
  TextEditingController contT = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Con.getColor('background')),
      appBar: AppBar(
        backgroundColor: Color(Con.getColor('button')),
        centerTitle: true,
        title: Text(
          'ترجم النص',
          style: TextStyle(fontSize: Con.getSizeTitle()),
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(5),
            icon: Icon(Icons.delete_forever),
            tooltip: 'حدف النص ',
            onPressed: () {
              contT.clear();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InputTextFormField(
                errortext: 'error pp',
                obscure: false,
                hinttext2: 'ادخل النص',
                controloer: contT,
                onChanged: (a) {
                  inputed = a;
                  print('saved');
                }),
            Container(
                height: 260,
                width: 500,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration:
                    BoxDecoration(color: Color(Con.getColor('backgroundText'))),
                child: resultWidget),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                shape: StadiumBorder(),
                color: Color(Con.getColor('button')),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Text(
                  'تشكيل',
                  style: TextStyle(
                      color: Color(Con.getColor('text')),
                      fontSize: Con.getSize()),
                ),
                onPressed: () async {
                  setState(() {
                    resultWidget = PrograssI();
                  });
                  //Check whether there is an Internet connection available
                  try {
                    final result = await InternetAddress.lookup('google.com');
                    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
                      resultWidget = ResultWidget(
                          await Con.setNormlRequestText(inputed), inputed);
                      setState(() {});
                    }
                  } on SocketException catch (_) {
                    resultWidget = Center(
                        child: Text(
                      'لا يوجد أنترنت',
                      style: TextStyle(
                          color: Color(Con.getColor('text')),
                          fontSize: Con.getSize()),
                    ));
                    setState(() {});
                  } catch (e) {
                    resultWidget = Center(
                        child: Text('حدث خطأ',
                            style: TextStyle(
                                color: Color(Con.getColor('text')),
                                fontSize: Con.getSize())));
                    setState(() {});
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
