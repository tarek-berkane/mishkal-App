import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';

class InputTextFormField extends StatelessWidget {
  var texttype;
  final String hinttext;
  final String errortext;
  final String errorcheck;
  final String hinttext2;
  var iconType;
  var onChanged;
  final bool obscure;
  final TextEditingController controloer;
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 250,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: new BoxDecoration(
        color: Color(Con.getColor('backgroundText')),
        border: new Border(
          bottom: new BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: new TextField(
        controller: controloer,
        textAlign: TextAlign.right,
        obscureText: obscure,
        maxLines: 80,
        autocorrect: false,
        // keyboardType: texttype,
        onChanged: onChanged,
        //  validator: (val) => val.length < 1 ? errortext : null,
        style: new TextStyle(
          fontSize: Con.getSize(),
          color: Color(Con.getColor('text')),
        ),
        decoration: new InputDecoration(
          fillColor: Color(Con.getColor('text')),
          hintStyle: TextStyle(color: Color(Con.getColor('text'))),
          border: InputBorder.none,
          labelText: hinttext,
          hintText: hinttext2,
         
          labelStyle: new TextStyle(fontSize: 15.0, color: Colors.black45),
          contentPadding: const EdgeInsets.all(1.0),
        ),
      ),
    );
  }

  InputTextFormField(
      {this.texttype,
      this.hinttext,
      this.hinttext2,
      this.iconType,
      this.errortext,
      this.errorcheck,
      this.obscure,
      this.onChanged,
      this.controloer});
}
