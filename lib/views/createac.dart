import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:udemy/secondsign.dart';

class createAC extends StatelessWidget {
  const createAC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Text(
                'Create an account',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'By using our services you are agreeying to our',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Terms',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 76, 76, 76),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'and',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Privacy Statement',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 76, 76, 76),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/Screenshot_20220709_015219.jpg'),
              Image.asset('assets/IMG_20220709_015254.jpg'),
              Image.asset('assets/IMG_20220709_015315.jpg'),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return secondsignin();
                      }));
                    },
                    child: Image.asset('assets/p.jpg')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
