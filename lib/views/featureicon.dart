import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:udemy/views/howt.dart';
import 'package:udemy/views/learnperlscr.dart';
import 'package:udemy/views/nova.dart';
import 'package:udemy/views/signin.dart';
import 'package:udemy/views/wheelock.dart';

class feature_icon extends StatelessWidget {
  const feature_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300, bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (CTX) {
                      return signin();
                    }));
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Color.fromARGB(255, 126, 125, 125),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Image.asset('assets/y.jpg'),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return learnperl();
                        }));
                      },
                      child: Image.asset(
                        'assets/IMG_20220705_222837.jpg',
                        scale: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return howtos();
                            }));
                          },
                          child: Image.asset('assets/IMG_20220705_222737.jpg')),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return nova();
                          }));
                        },
                        child: Image.asset('assets/IMG_20220705_232537.jpg')),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return wheelock();
                          }));
                        },
                        child: Image.asset(
                          'assets/IMG_20220705_231617.jpg',
                          scale: 2,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/IMG_20220705_231536.jpg',
                      scale: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50, top: 70),
                          child: Text(
                            'See all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.blue),
                          ),
                        ),
                        height: 220,
                        color: Colors.white,
                        width: 170,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
