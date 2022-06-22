import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiket_bioskop_1/Home.dart';
//import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/main.dart';
import 'package:tiket_bioskop_1/register.dart';
import 'package:tiket_bioskop_1/services/autantication_service.dart';
import 'package:tiket_bioskop_1/services/user_services.dart';
import 'package:tiket_bioskop_1/validator/validator.dart';
import 'controller/user_controller.dart';

//import 'package:tugas_indri/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final UserController userController = Get.put(UserController());

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var Lebar = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF4B29A4),
            ),
            child: Container(
              width: Lebar,
              height: Tinggi,
              margin: EdgeInsets.only(top: 180),
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
                        margin: EdgeInsets.only(top: 40, left: 17),
                        width: Lebar,
                        height: 40,
                        child: Text(
                          "Glad to see you!",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: Lebar,
                        height: 50,
                        child: Text(
                          "Sign to your account and get started \nto easily to watching ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Poppins',
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
                            labelText: " Email or Phone Number",
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
                          controller: _passwordController,
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
                                fontFamily: 'Poppins'),

                            //hintText: 'enter your email or phone number',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: Lebar,
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
                            var validator = LogInValidator(
                                _emailController.value.text,
                                _passwordController.value.text);
                            if (validator) {
                              validator = await AuthServices.signInWithEmail(
                                  _emailController.value.text,
                                  _passwordController.value.text);

                              if (validator) {
                                UserServices.getUserData().then((value) {
                                  value['akses'] == "Pembeli"
                                      ? Get.off(() => HomePage())
                                      : Get.off(() => HomePage());
                                });
                              }
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            width: 150,
                            height: 20,
                            child: Text(
                              "Dont have an account?  ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Text("Sign-Up",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF7E57C2),
                                  fontFamily: 'Poppins',
                                )),
                            onTap: () => Get.to(Registrasi()),
                            // do what you need to do when "Click here" gets clicked
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
