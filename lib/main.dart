import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/myApp.dart';

  void main()async {
    await Con.getTextSP();
    await Con.getModeNihtP();
    runApp(MyApp());
    }
  