import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'movie.dart';

class Movies {
  List<Movie> _movies = [];

  List<Movie> get movies {
    return [..._movies];
  }

  fetchAndSetMovies() async {
    final response = await http.get(
      Uri.parse(
          'https://api.themoviedb.org/3/discover/movie/?api_key=12318a94396d50fb9c61d9a308d8b8e7&sort_by=popularity.desc'),
    );
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    final List<Movie> loadedMovies = [];

    for (int i = 0; i < extractedData['results'].length; i++) {
      // print(extractedData['results'][i]['original_title']);
      loadedMovies.add(
        Movie(
            id: extractedData['results'][i]['id'],
            originalTitle: extractedData['results'][i]['original_title'],
            overView: extractedData['results'][i]['overview'],
            vote: extractedData['results'][i]['vote_average'].toString(),
            imageUrl: extractedData['results'][i]['poster_path'],
            bannerUrl: extractedData['results'][i]['backdrop_path']),
      );
    }
    _movies = loadedMovies;
    return _movies;
  }
}
