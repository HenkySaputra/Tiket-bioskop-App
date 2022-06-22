import 'package:flutter/material.dart';
import 'package:tiket_bioskop_1/Home.dart';
import 'package:tiket_bioskop_1/main.dart';
import 'package:tiket_bioskop_1/widget/drawer.dart';
import 'model/play_place.dart';
import 'model/rating_place.dart';
import 'view/detail_tayang.dart';
import 'view/detail_rating.dart';

class Playing extends StatelessWidget {
  const Playing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              "Playing",
              style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
            ),
          ],
        ),
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
              children: <Widget>[
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "SEDANG TAYANG",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(width: 20),
                        SizedBox(
                          height: 360.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final RatingPlace rating = ratingPlaceList[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DetailRating(place: rating),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Card(
                                        color:
                                            Color(0xFF4B29A4).withOpacity(0.7),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            ClipRRect(
                                              child: Image.asset(
                                                rating.imageAsset,
                                                width: 200,
                                                height: 320,
                                                fit: BoxFit.cover,
                                              ),
                                              // borderRadius:
                                              //     BorderRadius.circular(),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    rating.name,
                                                    style: const TextStyle(
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: ratingPlaceList.length,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "COMMING SOON",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.0),
                  ),
                  itemCount: playPlaceList.length,
                  itemBuilder: (context, index) {
                    PlayPlace place = playPlaceList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailTayang(place: place),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ClipRRect(
                          child: Card(
                            color: Color(0xFF4B29A4).withOpacity(0.7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.asset(
                                    place.imageAsset,
                                    width: 175,
                                    height: 250,
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: Text(
                                    place.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
