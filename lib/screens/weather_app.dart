import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/models/weather_location.dart';
import 'package:weather/widgets/single_weather.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              print("Hello world 1");
            },
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            )),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                print("Hello world");
              },
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            'assets/clouds.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 12,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ]),
          ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: locationList.length,
            itemBuilder: (context, index) => SingleWeather(index),
          )
        ],
      )),
    );
  }
}
