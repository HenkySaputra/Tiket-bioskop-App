import 'package:flutter/material.dart';
import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/main.dart';
import 'package:tiket_bioskop_1/widget/drawer.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //     icon:
        //         const Icon(Icons.arrow_back, color: Color.fromARGB(0, 0, 0, 0)),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => HomePage()),
        //       );
        //     },
        //   ),
        // ],
        //automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "History",
              style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF4B29A4),
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 300,
                height: 90,
                margin: EdgeInsets.only(left: 10, top: 20),
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
                          image: AssetImage("assets/batman.jpg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 201, 199, 207)
                                .withOpacity(0.8),
                            spreadRadius: 6,
                            blurRadius: 10,
                            offset: Offset(0, 5), // changes position of shadow
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(),
                        Text(
                          "THE-BATMAN",
                          style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                        ),
                        Text(
                          "Plaza Mulia",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                        Text(
                          "Tiket 2",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                        Text(
                          "Selasa, 10 Mei 2022, 21:35",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 8, 8, 8),
          ),
          Row(
            children: [
              Container(
                width: 300,
                height: 90,
                margin: EdgeInsets.only(left: 10, top: 20),
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
                          image: AssetImage("assets/kkn.jpg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 201, 199, 207)
                                .withOpacity(0.8),
                            spreadRadius: 6,
                            blurRadius: 10,
                            offset: Offset(0, 5), // changes position of shadow
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(),
                        Text(
                          "KKN DESA PENARI",
                          style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                        ),
                        Text(
                          "BIG-MALL",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                        Text(
                          "Tiket 2",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                        Text(
                          "Minggu, 8 Mei 2022, 21:10",
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 8, 8, 8),
          ),
        ],
      ),
    );
  }
}
