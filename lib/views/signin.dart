import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:udemy/createac.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
              'assets/Screenshot_2022_0709_015134_com.udemy.android.jpg'),
          Image.asset('assets/Screenshot_20220709_015219.jpg'),
          Image.asset('assets/IMG_20220709_015254.jpg'),
          Image.asset('assets/IMG_20220709_015315.jpg'),
          Image.asset('assets/IMG_20220709_015332.jpg'),
          SizedBox(
            height: 120,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return createAC();
                }));
              },
              child: Image.asset('assets/mv.jpg'))
        ],
      ),
    );
  }
}
