import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenController myController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    var Luas = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color(0xFFF3E9DD),
              Color(0xFFDAB88B),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(130),
                      topLeft: Radius.circular(130),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/RILIFH.ID.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
