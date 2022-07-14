import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class it3 extends StatelessWidget {
  const it3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/it 3.jpg'),
            Image.asset('assets/q2.jpg'),
            Image.asset('assets/q3.jpg'),
            Image.asset('assets/q4.jpg'),
            Image.asset('assets/q5.jpg'),
            Image.asset('assets/q6.jpg'),
          ],
        ),
      ),
    );
  }
}
