import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class wish_icon extends StatelessWidget {
  const wish_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/wish1.jpg'),
              Image.asset('assets/wish2.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
