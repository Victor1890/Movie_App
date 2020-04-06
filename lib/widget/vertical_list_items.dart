import 'package:flutter/material.dart';
import 'package:flutter_movie/model/movie.dart';
import 'package:flutter_movie/screens/movie_details_screen.dart';

class VerticalListItems extends StatelessWidget {

  final int index;

  VerticalListItems(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
          Navigator.of(context).pushNamed(
            MovieDetailsScreen.routeName, 
            arguments: {
              "id"        : bestMovieList[index].id,
              "title"     : bestMovieList[index].title,
              "imageUrl"  : bestMovieList[index].imageUrl,
              "description": bestMovieList[index].description,
              "rating"    : bestMovieList[index].rating,
              "year"      : bestMovieList[index].year,
              "duration"  : bestMovieList[index].duration,
            },
          );
        },
          child: Card(
            elevation: 5,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(bestMovieList[index].imageUrl),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(bestMovieList[index].title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Container(
                        width: 210,
                        child: Text(bestMovieList[index].description),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5,),
      ],
    );
  }
}