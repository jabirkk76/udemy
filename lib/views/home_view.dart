import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:udemy/account.dart';
import 'package:udemy/adbe.dart';
import 'package:udemy/blend.dart';
import 'package:udemy/busi.dart';
import 'package:udemy/fin.dart';
import 'package:udemy/it1.dart';
import 'package:udemy/it2.dart';
import 'package:udemy/it3.dart';
import 'package:udemy/it4.dart';
import 'package:udemy/nova.dart';
import 'package:udemy/featureicon.dart';
import 'package:udemy/howt.dart';
import 'package:udemy/learnperlscr.dart';
import 'package:udemy/myLearning.dart';
import 'package:udemy/search_icon.dart';
import 'package:udemy/siemens.dart';
import 'package:udemy/tab1.dart';
import 'package:udemy/tab2.dart';
import 'package:udemy/tcfour.dart';
import 'package:udemy/tcthree.dart';
import 'package:udemy/tctwo.dart';
import 'package:udemy/wheelock.dart';
import 'package:udemy/wish_icon.dart';
import 'package:udemy/word.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

final pages = [feature_icon(), search_icon(), myLearning(), wish_icon()];

class _homescreenState extends State<homescreen> {
  int currentselectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentselectindex,
          onTap: (newindex) {
            setState(() {
              currentselectindex = newindex;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return feature_icon();
                    }));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                label: "Featured",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return search_icon();
                    }));
                  },
                  child: Container(
                      width: 50,
                      color: Colors.white10,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return search_icon();
                            }));
                          },
                          child: Icon(Icons.search))),
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return myLearning();
                    }));
                  },
                  child: Image.asset(
                    'assets/10.jpg',
                    scale: 3,
                  ),
                ),
                label: 'My learning'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return wish_icon();
                    }));
                  },
                  child: Image.asset(
                    'assets/love.jpg',
                    scale: 3,
                  ),
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return account();
                    }));
                  },
                  child: Image.asset(
                    'assets/11.jpg',
                    scale: 3,
                  ),
                ),
                label: 'Account',
                backgroundColor: Colors.black),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 310, top: 25),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 132, 131, 131)),
                ),
              ),
              Image.asset('assets/IMG_20220705_224315.jpg'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 270,
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
                            child:
                                Image.asset('assets/IMG_20220705_222737.jpg')),
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
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230, top: 25),
                child: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return tab1();
                            }));
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              'Developement',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                border: Border.all()),
                          ),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (ctx) {
                                  return busi();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Center(
                                  child: Text(
                                    'Business',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                height: 45,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    border: Border.all()),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return tab2();
                            }));
                          },
                          child: Container(
                            child: Center(
                                child: Text(
                              'IT & Software',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                border: Border.all()),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          // ignore: prefer_const_constructors
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return fin();
                              }));
                            },
                            child: Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 12),
                                child: Text(
                                  'Finance & Accounting',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          height: 45,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            'Office Productivity',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Center(
                            child: Text(
                              'Personal Development',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          height: 45,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            'Design',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                          height: 45,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Center(
                            child: Text(
                              'Marketing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            'Lifestyle',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Center(
                            child: Text(
                              'Photography & video',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          height: 45,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            'Health & Fitness',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                          height: 45,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Center(
                            child: Text(
                              'Teaching & Academics',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          height: 45,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            'Music',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                          height: 45,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all()),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              Image.asset('assets/IMG_20220706_001346.jpg'),
              Container(
                height: 400,
                width: 450,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return word();
                            }));
                          },
                          child: Image.asset('assets/IMG_20220706_001825.jpg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return blend();
                            }));
                          },
                          child: Image.asset('assets/IMG_20220706_103511.jpg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return adb();
                            }));
                          },
                          child: Image.asset('assets/IMG_20220706_103445.jpg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return siemens();
                            }));
                          },
                          child: Image.asset('assets/IMG_20220706_103415.jpg')),
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
              Image.asset('assets/IMG_20220706_104858.jpg'),
              Container(
                height: 350,
                width: 400,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100, left: 10),
                      child: Image.asset(
                        'assets/IMG_20220706_104916.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Image.asset(
                        'assets/IMG_20220706_104936.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Image.asset(
                        'assets/IMG_20220706_104959.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Image.asset(
                        'assets/IMG_20220706_105017.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Image.asset(
                        'assets/IMG_20220706_105202.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 100,
                      ),
                      child: Image.asset(
                        'assets/IMG_20220706_105227.jpg',
                      ),
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
              Image.asset('assets/IMG_20220706_112826.jpg'),
              Container(
                height: 200,
                width: 500,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/IMG_20220706_113331.jpg'),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return tctwo();
                          }));
                        },
                        child: Image.asset(
                            'assets/Screenshot_20220706_113109.jpg')),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return tcthree();
                          }));
                        },
                        child: Image.asset('assets/IMG_20220706_112924.jpg')),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return tcfour();
                          }));
                        },
                        child: Image.asset('assets/IMG_20220706_112951.jpg')),
                    Image.asset('assets/Screenshot_20220706_113215.jpg'),
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
              Image.asset('assets/zero.jpg'),
              Container(
                height: 300,
                width: 450,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return it1();
                            }));
                          },
                          child: Image.asset('assets/one.jpg')),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return it2();
                          }));
                        },
                        child: Image.asset('assets/two.jpg')),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return it3();
                          }));
                        },
                        child: Image.asset('assets/three.jpg')),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return it4();
                          }));
                        },
                        child: Image.asset('assets/four.jpg')),
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
              Image.asset('assets/ne1.jpg'),
              Container(
                height: 300,
                width: 400,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/ne2.jpg'),
                    Image.asset('assets/ne5.jpg'),
                    Image.asset('assets/ne6.jpg'),
                    Image.asset('assets/ne7.jpg'),
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
              Image.asset('assets/IMG_20220706_124434.jpg'),
              Container(
                height: 300,
                width: 350,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/IMG_20220706_124459.jpg'),
                    Image.asset('assets/IMG_20220706_124530.jpg'),
                    Image.asset('assets/IMG_20220706_124548.jpg'),
                    Image.asset('assets/IMG_20220706_124609.jpg'),
                    Image.asset('assets/IMG_20220706_124630.jpg'),
                    Image.asset('assets/IMG_20220706_124701.jpg'),
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
              Image.asset('assets/IMG_20220708_205531.jpg'),
              Container(
                height: 300,
                width: 350,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/IMG_20220708_205807.jpg'),
                    Image.asset('assets/IMG_20220708_205827.jpg'),
                    Image.asset('assets/IMG_20220708_205716.jpg'),
                    Image.asset('assets/IMG_20220708_205739.jpg'),
                    Image.asset('assets/IMG_20220708_205628.jpg'),
                    Image.asset('assets/IMG_20220708_205556.jpg'),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
