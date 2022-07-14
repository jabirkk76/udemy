import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udemy/views/busi.dart';
import 'package:udemy/views/fin.dart';
import 'package:udemy/views/nova.dart';
import 'package:udemy/views/home_view.dart';
import 'package:udemy/views/howt.dart';
import 'package:udemy/views/learnperlscr.dart';
import 'package:udemy/views/myLearning.dart';
import 'package:udemy/views/screen1.dart';
import 'package:udemy/views/screen2.dart';
import 'package:udemy/views/screen3.dart';
import 'package:udemy/views/splash.dart';
import 'package:udemy/views/tab1.dart';
import 'package:udemy/views/tab2.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}
