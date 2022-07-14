import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class search_icon extends StatelessWidget {
  const search_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 375,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 36, 35, 35),
                      ),
                      hintText: '  Search',
                      hintStyle: TextStyle(
                          fontSize: 17, color: Color.fromARGB(255, 36, 35, 35)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0,
                      ),
                      color: Colors.white),
                ),
              ),
            ),
            Image.asset('assets/ww.jpg')
          ],
        ),
      ),
    );
  }
}
