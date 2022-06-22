import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/history.dart';
import 'package:tiket_bioskop_1/main.dart';

import 'controller/pilih_tiket_controller.dart';

import 'binding/pilih_tiket_binding.dart';

class PilihTiketView extends GetView<PilihTiketController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PilihTiketController());
    var lebar = MediaQuery.of(context).size.width;
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
        title: Row(
          children: [
            Text(
              "Pilih Tiket",
              style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF4B29A4),
      ),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/bg.png"),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: context.mediaQueryPadding.top),
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Select Your\nSeat",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333E63),
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "",
                        ),
                        Text(
                          "Site 1 -3A",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF656CEE),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemStatus(
                      status: "Available",
                      color: Colors.white,
                    ),
                    ItemStatus(
                      status: "Filled",
                      color: Color(0xFFFF8B2D),
                    ),
                    ItemStatus(
                      status: "Selected",
                      color: Color(0xFF656CEE),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bioskop",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 35),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "A",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "B",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "C",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "D",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "E",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Obx(
                                    () => Column(
                                      children: List.generate(
                                        controller.booking.length,
                                        (index) => GestureDetector(
                                          onTap: () =>
                                              controller.gantiBooking(index),
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            height: 150,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black38,
                                              ),
                                              color: controller
                                                          .indexBooking.value ==
                                                      index
                                                  ? Color(0xFF656CEE)
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: Text("${index + 1}"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  child: Obx(
                                    () => GridView.builder(
                                      padding: EdgeInsets.all(10),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10,
                                        crossAxisCount: 5,
                                      ),
                                      itemCount: controller
                                          .booking[
                                              controller.indexBooking.value]
                                          .length,
                                      itemBuilder: (context, index) =>
                                          GestureDetector(
                                        onTap: () =>
                                            controller.selectKursi(index),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black38,
                                            ),
                                            color: controller.booking[controller
                                                            .indexBooking.value]
                                                        [index]["status"] ==
                                                    "available"
                                                ? Colors.white
                                                : controller.booking[controller
                                                                .indexBooking
                                                                .value][index]
                                                            ["status"] ==
                                                        "filled"
                                                    ? Color(0xFFFF8B2D)
                                                    : Color(0xFF656CEE),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      customAlert(context, "Terima kasih telah memesan");
                    },
                    child: Text(
                      "Pesan Sekarang",
                      style:
                          TextStyle(fontFamily: 'Poppins', color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFE664),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemStatus extends StatelessWidget {
  ItemStatus({
    Key? key,
    required this.status,
    required this.color,
  }) : super(key: key);

  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(width: 7),
        Text(
          status,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}

Future<dynamic> customAlert(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white.withOpacity(0.5),
          actions: [
            Column(
              children: [
                Text(
                  pesan,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/qr-code.png",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B29A4).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.off(HomePage());
                    },
                    child: const Text(
                      "Selesai",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      });
}
