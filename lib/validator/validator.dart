import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SignUpValidator(name, notelp, email, password) {
  if (name.isEmpty || notelp.isEmpty || email.isEmpty || password.isEmpty) {
    Get.snackbar('Gagal', 'Form Tidak Boleh Kosong!',
        titleText: Text(
          "Gagal",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 0, 0)),
        ),
        messageText: Text(
          "Form Tidak Boleh Kosong!",
          style: TextStyle(
              fontFamily: "Poppins", color: Color.fromARGB(255, 0, 0, 0)),
        ),
        icon: Icon(
          Icons.warning,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: Color(0xFFFFE664),
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.TOP,
        margin: EdgeInsets.all(15),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack);
    return false;
  } else {
    return true;
  }
}

LogInValidator(email, password) {
  if (email.isEmpty || password.isEmpty) {
    Get.snackbar('Gagal', 'Form Tidak Boleh Kosong!',
        titleText: Text(
          "Gagal",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 0, 0)),
        ),
        messageText: Text(
          "Form Tidak Boleh Kosong!",
          style: TextStyle(
              fontFamily: "Poppins", color: Color.fromARGB(255, 0, 0, 0)),
        ),
        icon: Icon(
          Icons.warning,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: Color(0xFFFFE664),
        duration: Duration(seconds: 3),
        snackPosition: SnackPosition.TOP,
        margin: EdgeInsets.all(15),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack);
    return false;
  } else {
    return true;
  }
}
