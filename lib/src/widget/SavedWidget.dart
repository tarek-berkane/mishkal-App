import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/screens/PageShowFavorite.dart';

class SavedW extends StatelessWidget {
  String _text1, _text2;
  int _id;
  var _state;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(Con.getColor('backgroundText')),
      ),
      child: InkWell(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.delete_forever),
                    onPressed: () {
                      Con.deleteById(_id);
                      _state.setState(() {});
                    },
                  ),
                ],
              ),
              Text(
                'النص : $_text1',
                maxLines: 1,
                style: TextStyle(
                    color: Color(Con.getColor('text')),
                    fontSize: Con.getSize()),
              ),
              Text('التشكيل : $_text2',
                  maxLines: 1,
                  style: TextStyle(
                      color: Color(Con.getColor('text')),
                      fontSize: Con.getSize())),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageSF(_text1, _text2)),
          );
        },
      ),
    );
  }

  SavedW(this._state, this._id, this._text1, this._text2);
}
