import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class howtos extends StatelessWidget {
  const howtos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView
      (
        child: Column(
          children: [
            Image.asset('assets/at 1.jpg'),
            Image.asset('assets/at 2.jpg'),
            Image.asset('assets/at 3.jpg'),
            Image.asset('assets/at 4.jpg'),
            Image.asset('assets/at 5.jpg'),
            Image.asset('assets/at 6.jpg'),
            Image.asset('assets/at 7.jpg'),
            Image.asset('assets/at 8.jpg'),
            Image.asset('assets/at 9.jpg'),
            Image.asset('assets/at 10.jpg'),
            Image.asset('assets/at 11.jpg'),
            Image.asset('assets/at 12.jpg'),
            Image.asset('assets/at 13.jpg')
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
