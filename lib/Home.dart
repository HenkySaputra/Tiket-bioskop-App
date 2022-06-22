import 'package:flutter/material.dart';
import 'package:tiket_bioskop_1/About.dart';
import 'package:tiket_bioskop_1/history.dart';
import 'package:tiket_bioskop_1/login.dart';
import 'package:tiket_bioskop_1/main.dart';
import 'package:get/get.dart';
import 'package:tiket_bioskop_1/playing.dart';
import 'package:tiket_bioskop_1/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("RILIFH"),
        backgroundColor: Color(0xFF4B29A4),
      ),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: <Color>[
              Color(0xFFF3E9DD),
              Color(0xFFDAB88B),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Info Terkini",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, right: 10),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 20,
                    children: [
                      Container(
                        width: 230,
                        height: 300,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                            image: AssetImage("assets/kkn.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 201, 199, 207)
                                  .withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/heart.png",
                                width: 2,
                                height: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.1),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  height: 50,
                                  margin: EdgeInsets.only(top: 200, left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF4B29A4).withOpacity(0.7),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "30 April 2022",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      ),
                                      Text(
                                        "KKN Desa Penari",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 230,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                            image: AssetImage("assets/the-kings-man.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 201, 199, 207)
                                  .withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/heart.png",
                                width: 2,
                                height: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.1),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  height: 50,
                                  margin: EdgeInsets.only(top: 200, left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF4B29A4).withOpacity(0.7),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "22 Desember 2021",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      ),
                                      Text(
                                        "King Mans",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 230,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                            image: AssetImage("assets/ashiap-man.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 201, 199, 207)
                                  .withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/heart.png",
                                width: 2,
                                height: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.1),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 150,
                                  height: 50,
                                  margin: EdgeInsets.only(top: 200, left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF4B29A4).withOpacity(0.7),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "10 Februari 2022",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      ),
                                      Text(
                                        "Ashiap Man",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 230,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          image: DecorationImage(
                            image: AssetImage("assets/uncharted.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 201, 199, 207)
                                  .withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/heart.png",
                                  width: 2,
                                  height: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.1),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 50,
                                    margin: EdgeInsets.only(top: 200, left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF4B29A4).withOpacity(0.7),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "16 Februari 2022",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                        ),
                                        Text(
                                          "Uncharted",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 15,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Category(isActive: true, size: "Action "),
                      Category(size: "Comedy"),
                      Category(size: "Love"),
                      Category(size: "Drama")
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 290,
                      height: 70,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF4B29A4).withOpacity(0.8)),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("assets/moonfall.jpg"),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 201, 199, 207)
                                      .withOpacity(0.8),
                                  spreadRadius: 6,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 100,
                                      // height: 10,
                                      margin:
                                          EdgeInsets.only(left: 20, top: 10),
                                      child: Text(
                                        "Moon-Fall",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                  ]),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5, left: 170),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  // Container(
                                  //   width: 20,
                                  //   height: 20,
                                  //   margin: EdgeInsets.only(top: 5),
                                  //   child: Image.asset(
                                  //     "assets/favourites.png",
                                  //     width: 2,
                                  //     height: 2,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 290,
                      height: 70,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF4B29A4).withOpacity(0.8)),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("assets/spiderman.jpg"),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 201, 199, 207)
                                      .withOpacity(0.8),
                                  spreadRadius: 6,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 100,
                                      // height: 10,
                                      margin:
                                          EdgeInsets.only(left: 20, top: 10),
                                      child: Text(
                                        "SpiderMan",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                  ]),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5, left: 160),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 290,
                      height: 70,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF4B29A4).withOpacity(0.8)),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("assets/scream.jpg"),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 201, 199, 207)
                                      .withOpacity(0.8),
                                  spreadRadius: 6,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 100,
                                      // height: 10,
                                      margin:
                                          EdgeInsets.only(left: 20, top: 10),
                                      child: Text(
                                        "Scream",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                  ]),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5, left: 170),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                      "assets/favourites.png",
                                      width: 2,
                                      height: 2,
                                    ),
                                  ),
                                  // Container(
                                  //   width: 20,
                                  //   height: 20,
                                  //   margin: EdgeInsets.only(top: 5),
                                  //   child: Image.asset(
                                  //     "assets/favourites.png",
                                  //     width: 2,
                                  //     height: 2,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF4B29A4) : Colors.transparent,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          width: 1,
          color: Color(0xFF4B29A4),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Poppins'),
      ),
    );
  }
}
