import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/main.dart';
import 'package:tiket_bioskop_1/pilih_tiket.dart';
import 'package:tiket_bioskop_1/playing.dart';
import '../model/rating_place.dart';
import 'package:get/get.dart';

class DetailRating extends StatefulWidget {
  final RatingPlace place;

  const DetailRating({Key? key, required this.place}) : super(key: key);

  @override
  _DetailRatingState createState() => _DetailRatingState();
}

class _DetailRatingState extends State<DetailRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Color.fromARGB(0, 209, 204, 204)),
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
              "Sedang Tayang",
              style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF4B29A4),
      ),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          child: ListView(
            children: <Widget>[
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      ClipRRect(
                        child: Container(
                          width: 400,
                          height: 300,
                          child: Image.asset(widget.place.imageAsset,
                              fit: BoxFit.cover),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 30,
                            margin: EdgeInsets.only(top: 10, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF4B29A4).withOpacity(0.7),
                            ),
                            child: Text(
                              widget.place.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 260,
                            height: 60,
                            margin: EdgeInsets.only(left: 10, top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF4B29A4).withOpacity(0.8)),
                            child: Row(
                              children: <Widget>[
                                const SizedBox(width: 8),
                                Text(
                                  "Genre:\n${widget.place.genre}",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //FavoriteButton(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 8),
                          Container(
                            width: 260,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF4B29A4).withOpacity(0.8)),
                            child: Row(
                              children: [
                                const SizedBox(width: 8),
                                Text(
                                  "Durasi:\n${widget.place.durasi}",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 8),
                          Container(
                            width: 260,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF4B29A4).withOpacity(0.8)),
                            child: Row(
                              children: [
                                const SizedBox(width: 8),
                                Text(
                                  "Sutradara:\n${widget.place.sutradara}",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 8),
                          Container(
                            width: 260,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF4B29A4).withOpacity(0.8)),
                            child: Row(
                              children: [
                                const SizedBox(width: 8),
                                Text(
                                  "Rating Usia:\n${widget.place.ratingUsia}",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          const SizedBox(width: 8),
                          Container(
                            width: 260,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xFF4B29A4).withOpacity(0.8)),
                            child: Row(
                              children: [
                                const SizedBox(width: 8),
                                Text(
                                  "Rating Film:\n${widget.place.ratingFilm}",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "SINOPSIS",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          widget.place.sinopsis,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 200,
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
                                Get.to(PilihTiketView());
                              },
                              child: const Text(
                                "Pesan",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 133, 133, 133),
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
