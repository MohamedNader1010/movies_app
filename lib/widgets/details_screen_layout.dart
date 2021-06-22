import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

const IMAGEURLPATH = 'https://image.tmdb.org/t/p/original';

Widget DetailsScreenLayout(dynamic bannerUrl, String vote, String overView) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.network(
                  IMAGEURLPATH + bannerUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                child: Text(
                  'Average Rating - ${vote.toString()}',
                  style: GoogleFonts.breeSerif(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 300,
          width: 400,
          child: SingleChildScrollView(
            child: Text(
              overView,
              textAlign: TextAlign.center,
              style: GoogleFonts.breeSerif(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    ),
  );
}
