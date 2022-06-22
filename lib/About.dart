import 'package:flutter/material.dart';
import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/main.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Luas = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon:
                const Icon(Icons.arrow_back, color: Color.fromARGB(0, 0, 0, 0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ],
        //automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "About",
              style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF4B29A4),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/RILIFH.ID.png"),
              fit: BoxFit.cover,
            )),
            child: Container(
              width: Luas,
              height: Tinggi,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)),
                  color: Color(0xFF4B29A4).withOpacity(0.7)),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "APA ITU RILIFH ID",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      //margin: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(90.0),
                                        image: DecorationImage(
                                          image:
                                              AssetImage("assets/account.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "RILIFH ID adalah aplikasi layanan hiburan \nterdepan di indonesia yang memberikan \npengalaman baru dalam pembelian tiket \nfilm dan hiburan lainnya.Dengan RILIFH ID,\npengguna dapat mengetahui informasi \ntentang film terkini serta melakukan \npemesanan tiket bioskop dengan mudah, \ncepat, dan aman. \n\nAplikasi RILIFH iD akan segera launching soon :)  ",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
