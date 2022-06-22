// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiket_bioskop_1/login.dart';
import 'package:tiket_bioskop_1/services/autantication_service.dart';
import 'package:tiket_bioskop_1/services/user_services.dart';
import 'package:tiket_bioskop_1/validator/validator.dart';
//import 'package:tugas_indri/login.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

enum Akun { pembeli, admin }

class _RegistrasiState extends State<Registrasi> {
  final _nameController = TextEditingController();
  final _noTelpController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  Akun? _character = Akun.pembeli;

  String getAkses() {
    if (_character == Akun.pembeli) {
      return "Pembeli";
    } else {
      return "Admin";
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _noTelpController.dispose();
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF4B29A4),
            ),
            child: Container(
              width: lebar,
              height: Tinggi,
              margin: EdgeInsets.only(top: 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70)),
                color: Color(0xFFFDF6EC),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 20),
                        width: lebar,
                        height: 20,
                        child: Text(
                          "Start For Free",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: lebar,
                        height: 50,
                        child: Text(
                          "Sign Up To RILIFH.ID ",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          controller: _nameController,
                          //controller: textController.namaLengkapCtrl,
                          maxLines: 1,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFFAC213),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: " Nama ",
                            labelStyle: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          controller: _emailController,
                          //controller: textController.namaLengkapCtrl,
                          maxLines: 1,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFFAC213),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: " Email ",
                            labelStyle: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          controller: _noTelpController,
                          //controller: textController.namaLengkapCtrl,
                          maxLines: 1,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFFAC213),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          obscureText: _isHidePassword,
                          autofocus: false,
                          controller: _passController,
                          //controller: textController.namaLengkapCtrl,
                          maxLines: 1,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isHidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: _isHidePassword
                                      ? Colors.grey
                                      : Colors.blue,
                                ),
                                onPressed: () {
                                  _togglePasswordVisibility();
                                }),
                            fillColor: Color(0xFFFAC213),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),

                            //hintText: 'enter your email or phone number',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        child: ListTile(
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          visualDensity:
                              VisualDensity(horizontal: -4, vertical: -2),
                          title: const Text(
                            'Pembeli',
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 10),
                          ),
                          leading: Radio<Akun>(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 54, 60, 79)),
                            value: Akun.pembeli,
                            groupValue: _character,
                            onChanged: (Akun? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: ListTile(
                          dense: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          visualDensity:
                              VisualDensity(horizontal: -4, vertical: -2),
                          title: const Text(
                            'Admin',
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 10),
                          ),
                          leading: Radio<Akun>(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 54, 60, 79)),
                            value: Akun.admin,
                            groupValue: _character,
                            onChanged: (Akun? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: lebar,
                        height: 40,
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
                          onPressed: () async {
                            var validator = SignUpValidator(
                              _nameController.value.text,
                              _noTelpController.value.text,
                              _emailController.value.text,
                              _passController.value.text,
                            );
                            if (validator) {
                              validator = await AuthServices.createUser(
                                  _emailController.value.text,
                                  _passController.value.text);
                              if (validator) {
                                await UserServices.addUser(
                                  _nameController.value.text,
                                  _noTelpController.value.text,
                                  _emailController.value.text,
                                  getAkses(),
                                );
                                Get.to(() => LoginPage());
                              }
                            }
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 5),
                            width: 160,
                            height: 20,
                            child: Text(
                              "Already have an account?",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          GestureDetector(
                            child: Text("login",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF7E57C2),
                                    fontFamily: 'Poppins')),
                            onTap: () => Get.to(LoginPage()),
                            // do what you need to do when "Click here" gets clicked
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool? nilai = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 35,
            height: 35,
            margin: EdgeInsets.only(right: 5, left: 20),
            child: Checkbox(
                value: nilai,
                onChanged: (bool? value) {
                  setState(() {
                    nilai = value;
                  });
                })),
        Text(
          'i agree to all the Term and Privacy Policy ',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
        ), //Text
      ],
    );
  }
}
