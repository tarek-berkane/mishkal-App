import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mishkal/src/Controller.dart';

class ResultWidget extends StatelessWidget {
  Map result;
  String inputText;
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    result['result'],
                    textAlign: TextAlign.right,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: Con.getSize(),
                      color: Color(
                        Con.getColor('text'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                color: Color(Con.getColor('appbar')),
                child: Text(
                  'حفظ',
                  style: TextStyle(
                    fontSize: Con.getSize(),
                    color: Color(Con.getColor('text')),
                  ),
                ),
                shape: StadiumBorder(),
                onPressed: () {
                  //insert into database
                  Con.insertDB(inputText, result['result']);
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('تم الحفظ')));
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                color: Color(Con.getColor('appbar')),
                child: Text(
                  'نسخ',
                  style: TextStyle(
                    fontSize: Con.getSize(),
                    color: Color(Con.getColor('text')),
                  ),
                ),
                shape: StadiumBorder(),
                onPressed: () {
                  Clipboard.setData(new ClipboardData(text: result['result']));
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('تم النسخ')));
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  ResultWidget(this.result,this.inputText);
}
