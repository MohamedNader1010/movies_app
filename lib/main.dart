import 'package:flutter/material.dart';

import 'widgets/movies_grid.dart';
import 'models/movies.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List topMovies = [];
  bool _isLoading = true;

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    final loadedData = await Movies().fetchAndSetMovies() as List;
    print(loadedData);
    if (loadedData != [])
      setState(() {
        print('_isLoading not = Null');
        topMovies = loadedData;
        _isLoading = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : MoviesGrid(topMovies),
      ),
    );
  }
}
