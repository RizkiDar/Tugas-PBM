import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4/model.dart';

class DetailPage extends StatelessWidget {
  final Hotel hotel;

  const DetailPage({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.blue.shade500,
      ),
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(hotel.gambar),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        hotel.title,
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 51, 50, 50)),
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        children: [
                          Text(
                            "${hotel.rating}",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color.fromARGB(255, 53, 52, 52)),
                            textAlign: TextAlign.left,
                          ),
                          RichText(
                              text: WidgetSpan(
                                  child: Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 19,
                          )))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //step 9 -> masuk ke list_page.dart
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.location_on_outlined,
                          color: Color.fromARGB(255, 68, 66, 66),
                          size: 40,
                        )),
                      ]),
                    ),
                    Text(
                      hotel.description,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 46, 45, 45)),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.phone_rounded,
                            color: Color.fromARGB(255, 68, 66, 66),
                            size: 30,
                          )),
                        ]),
                      ),
                    ),
                    Text(
                      hotel.telp,
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 41, 40, 40)),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
