import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiket_bioskop_1/widget/drawer.dart';
import '../controller/user_controller.dart';
import '../services/user_services.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  var idDoc = UserServices.getUserIdDoc();
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => UserController());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Profile",
              style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF4B29A4),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
          child: FutureBuilder<String>(
        future: idDoc,
        builder: (_, AsyncSnapshot<String> _snapshot) {
          return (_snapshot.hasData)
              ? FutureBuilder<DocumentSnapshot>(
                  future: users.doc(_snapshot.data.toString()).get(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    color: Color(0xFF4B29A4),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Profil",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                letterSpacing: 0.2,
                                                color: Color.fromARGB(
                                                    255, 54, 60, 79)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Nama Anda:",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 54, 60, 79),
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                letterSpacing: 0.2,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            snapshot.data!.get("name"),
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 54, 60, 79),
                                              fontFamily: "Poppins",
                                              fontSize: 15,
                                              letterSpacing: 0.2,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Email Anda:",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 54, 60, 79),
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                letterSpacing: 0.2,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            snapshot.data!.get("email"),
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 54, 60, 79),
                                              fontFamily: "Poppins",
                                              fontSize: 15,
                                              letterSpacing: 0.2,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                  left:
                                      MediaQuery.of(context).size.width * 0.33,
                                  top: MediaQuery.of(context).size.height *
                                      0.055,
                                  child: CircleAvatar(
                                    radius: 56,
                                    backgroundColor:
                                        Color.fromARGB(255, 226, 225, 225),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: ClipOval(
                                          child: Image.asset(
                                              "assets/account.png")),
                                    ),
                                  ))
                            ],
                          )
                        : Text("Loading ...");
                  },
                )
              : Text("Loading ...");
        },
      )),
    );
  }
}
