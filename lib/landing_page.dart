import 'package:flutter/material.dart';
import 'package:tiket_bioskop_1/login.dart';
import 'package:get/get.dart';

class Landing1 extends StatelessWidget {
  const Landing1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Luas = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(color: Color(0xFF4B29A4)),
              child: Container(
                width: Luas,
                height: Tinggi,
                margin: EdgeInsets.only(top: 280),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)),
                  color: Color(0xFFFDF6EC),
                ),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 140),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser2.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser4.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/landing4.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 180,
                              height: 25,
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Automate",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 103, 102, 102),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              height: 50,
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Switch through different scenes and \nquick actions for fast management of your name",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 116, 116, 116),
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(left: 230, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFE664),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(40),
                                )),
                            onPressed: () {
                              Get.to(Landing2());
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              margin: EdgeInsets.only(),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/right-arrow.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Luas = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(color: Color(0xFF4B29A4)),
              child: Container(
                width: Luas,
                height: Tinggi,
                margin: EdgeInsets.only(top: 280),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)),
                  color: Color(0xFFFDF6EC),
                ),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 140),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser2.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser4.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/landing4.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 180,
                              height: 25,
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Set Up Devices Easily",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 124, 124, 124),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              height: 50,
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Link your home devices bt plugging them \nand connect to Wi-fi Control them all using \na single app ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 145, 145, 145),
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(left: 230, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFE664),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(40),
                                )),
                            onPressed: () {
                              Get.to(Landing1());
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              margin: EdgeInsets.only(),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/right-arrow.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Landing2 extends StatelessWidget {
  const Landing2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Luas = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(color: Color(0xFF4B29A4)),
              child: Container(
                width: Luas,
                height: Tinggi,
                margin: EdgeInsets.only(top: 280),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)),
                  color: Color(0xFFFDF6EC),
                ),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 140),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser2.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/konser4.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/landing4.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 180,
                              height: 25,
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Get notifications",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 125, 125, 125),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              height: 50,
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Enthusiasm for ordering tickets and enjoy all the films that you \nhave ordered in our application",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 133, 133, 133),
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 240,
                          height: 50,
                          margin: EdgeInsets.only(left: 40, right: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFE664),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(40),
                                )),
                            onPressed: () {
                              Get.to(LoginPage());
                            },
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
