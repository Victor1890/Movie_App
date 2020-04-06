import 'package:flutter/material.dart';
import 'package:flutter_movie/model/movie.dart';
import 'package:flutter_movie/screens/movie_details_screen.dart';

class TopRatedItems extends StatelessWidget {

  final int index;

  TopRatedItems(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(
            MovieDetailsScreen.routeName, 
            arguments: {
              "id"        : topRatedMovieList[index].id,
              "title"     : topRatedMovieList[index].title,
              "imageUrl"  : topRatedMovieList[index].imageUrl,
              "description": topRatedMovieList[index].description,
              "rating"    : topRatedMovieList[index].rating,
              "year"      : topRatedMovieList[index].year,
              "duration"  : topRatedMovieList[index].duration,
            },
          );
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(topRatedMovieList[index].imageUrl),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              topRatedMovieList[index].title, 
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, 
            ),
          ],
        ),
      ),
    );
  }
}