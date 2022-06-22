import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tiket_bioskop_1/About.dart';
import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/history.dart';
import 'package:tiket_bioskop_1/login.dart';
import 'package:tiket_bioskop_1/playing.dart';
import 'package:tiket_bioskop_1/widget/profile.dart';

import '../services/autantication_service.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF4B29A4),
            ),
            child: Container(
              width: lebar,
              height: Tinggi,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/RILIFH.ID.png"),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {
              Get.to(HomePage());
            },
          ),
          // SizedBox(
          //   height: 10,
          // ),
          ListTile(
            leading: Icon(Icons.playlist_play),
            title: Text(
              "Playing",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {
              Get.to(Playing());
            },
          ),

          ListTile(
            leading: Icon(Icons.history),
            title: Text(
              "History",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
            onTap: () {
              Get.to(History());
            },
          ),
          ListTile(
            // selected: true,
            leading: Icon(Icons.person_outlined),
            title: Text(
              "Profile",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),

            onTap: () {
              Get.to(ProfilePage());
            },
          ),
          ListTile(
            // selected: true,
            leading: Icon(Icons.abc_outlined),
            title: Text(
              "About",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),

            onTap: () {
              Get.to(About());
            },
          ),
          SizedBox(height: 100),
          ListTile(
            // selected: true,
            leading: Icon(Icons.logout),
            title: Text(
              "Log-Out",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),

            onTap: () {
              AuthServices.signOut();
              Get.to(LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
