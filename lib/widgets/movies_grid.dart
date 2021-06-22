import 'package:flutter/material.dart';
import 'movie_item.dart';

class MoviesGrid extends StatelessWidget {
  final List moviesData;
  const MoviesGrid(this.moviesData);

  @override
  Widget build(BuildContext context) {
    return moviesData == []
        ? Container(
            width: 100,
            height: 100,
            child: Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            )),
          )
        : GridView.builder(
            itemCount: moviesData.length,
            itemBuilder: (ctx, i) => MovieItem(
              movie: moviesData[i],
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          );
  }
}
