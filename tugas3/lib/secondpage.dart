import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        automaticallyImplyLeading: false,
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lotos",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 2,
                            width: 5,
                            color: Color.fromARGB(255, 224, 222, 222),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 2,
                            width: 5,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 3,
                            width: 20,
                            color: Color.fromARGB(255, 247, 245, 245),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 2,
                            width: 5,
                            color: Color.fromARGB(255, 245, 247, 246),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 2,
                            width: 5,
                            color: Color.fromARGB(255, 230, 231, 231),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          Icon(
            FontAwesomeIcons.heart,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                FontAwesomeIcons.close,
                color: Colors.white,
              ))
        ]),
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.lightBlueAccent,
                  Color.fromARGB(255, 2, 13, 112),
                ])),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset(
                    'img/moon.png',
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "17 min",
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: 160,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.play,
                              color: Colors.deepPurple,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Play",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.deepPurple),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
