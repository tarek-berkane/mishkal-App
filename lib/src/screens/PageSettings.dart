import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/SampleRoutes.dart';

class PageSettings extends StatefulWidget {
  @override
  _PageSettingsState createState() => _PageSettingsState();
}

class _PageSettingsState extends State<PageSettings> {
  bool _a = false;
  double _va = Con.getSize();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: ()async=>false,
          child: Scaffold(
        backgroundColor: Color(Con.getColor('background')),
        appBar: AppBar(
          backgroundColor: Color(Con.getColor('appbar')),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            // replace settings page withe home to update state for home Screen
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(ArchSampleRoutes.home),
          ),
          title: Text(
            'اعدادات',
            style: TextStyle(fontSize: Con.getSizeTitle()),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                _a ? _a = false : _a = true;
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      'Mode nighte',
                      style: TextStyle(
                          color: Color(Con.getColor('text')),
                          fontSize: Con.getSize()),
                    )),
                    Switch(
                      value: Con.getModeN(),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (bool a) {
                        _a = a;
                        Con.setModeN(a);
                        super.setState(() {});

                        setState(() {
                          print(_a = a);
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Divider(
              indent: 20,
              color: Colors.red,
            ),
            Column(
              children: <Widget>[
                Text(
                  'Text Size',
                  style: TextStyle(
                    fontSize: Con.getSize(),
                    color: Color(Con.getColor('text')),
                  ),
                ),
                Slider(
                  value: _va,
                  max: 25,
                  min: 15,
                  onChanged: (a) {
                    _va = a;
                    Con.setSize(a);
                    setState(() {
                      print(_va);
                    });
                  },
                ),
                Divider(
                  height: 20,
                  indent: 20,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
