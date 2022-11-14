import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/models/weather_location.dart';

class SingleWeather extends StatelessWidget {
  const SingleWeather(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "${locationList[index].city}",
                      style: GoogleFonts.lato(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${locationList[index].dateTime}",
                      style:
                          GoogleFonts.lato(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      "${locationList[index].temparature}",
                      style: GoogleFonts.lato(
                          fontSize: 75,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${locationList[index].weatherType}",
                          style: GoogleFonts.lato(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white30)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Wind",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "10",
                          style: GoogleFonts.lato(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "km/h",
                          style: GoogleFonts.lato(
                              fontSize: 14, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 4,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              color: Colors.greenAccent,
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Rain",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "2",
                          style: GoogleFonts.lato(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "%",
                          style: GoogleFonts.lato(
                              fontSize: 14, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 4,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              color: Colors.red[400],
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Humidity",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "10",
                          style: GoogleFonts.lato(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "%",
                          style: GoogleFonts.lato(
                              fontSize: 14, color: Colors.white),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 4,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
