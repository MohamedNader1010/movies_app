import 'package:flutter/material.dart';

import '../models/movie.dart';
import '../screens/details_screen.dart';

const IMAGEURLPATH = 'https://image.tmdb.org/t/p/original';

class MovieItem extends StatelessWidget {
  final Movie movie;
  MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            IMAGEURLPATH + movie.imageUrl,
            fit: BoxFit.fill,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(
                    bannerUrl: movie.bannerUrl,
                    originalTitle: movie.originalTitle,
                    overView: movie.overView,
                    vote: movie.vote),
              ),
            );
          },
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            movie.originalTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
