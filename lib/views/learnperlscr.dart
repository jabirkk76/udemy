import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class learnperl extends StatelessWidget {
  const learnperl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/ip 1.jpg'),
            Image.asset('assets/ip 2.jpg'),
            Image.asset('assets/ip 3.jpg'),
            Image.asset('assets/ip 4.jpg'),
            Image.asset('assets/ip 5.jpg'),
            Image.asset('assets/ip 6.jpg'),
            Image.asset('assets/ip 7.jpg'),
            Image.asset('assets/ip 8.jpg'),
            Image.asset('assets/ip 9.jpg'),
            Image.asset('assets/ip 10.jpg'),
            Image.asset('assets/ip 11.jpg'),
            Image.asset('assets/ip 12.jpg')
          ],
        ),
      ),
    );
  }
}
