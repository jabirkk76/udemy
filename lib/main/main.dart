import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udemy/busi.dart';
import 'package:udemy/fin.dart';
import 'package:udemy/nova.dart';
import 'package:udemy/home_view.dart';
import 'package:udemy/howt.dart';
import 'package:udemy/learnperlscr.dart';
import 'package:udemy/myLearning.dart';
import 'package:udemy/screen1.dart';
import 'package:udemy/screen2.dart';
import 'package:udemy/screen3.dart';
import 'package:udemy/splash.dart';
import 'package:udemy/tab1.dart';
import 'package:udemy/tab2.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}
