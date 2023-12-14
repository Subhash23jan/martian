import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherReportPage extends StatefulWidget {
  @override
  State<WeatherReportPage> createState() => _WeatherReportPageState();
}

class _WeatherReportPageState extends State<WeatherReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Report'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlueAccent],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'Wind Speed: 30 mph',
                style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
               // Use a good font
                ),
              ),
              const SizedBox(height: 20),
               Text(
                'Dust Rain Probability: 30%',
                style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  // Use a good font
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child:  Center(
                  child: Text(
                    ' Dust  rain  Probability Graph',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                       // Use a good font
                    ),
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
