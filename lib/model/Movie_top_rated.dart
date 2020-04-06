import 'package:flutter/material.dart';

class Movie_Top_Rated{
  
  final int id;
  final String title;
  final double vote_average;
  final String overview;
  final String poster_path;
  final String popularity;

  Movie_Top_Rated({this.id, this.title, this.vote_average, this.overview, this.poster_path, this.popularity});

  factory Movie_Top_Rated.fromJson(final json){
    return Movie_Top_Rated(
      id: json['id'],
      title: json['title'],
      vote_average: json['vote_average'],
      overview: json['overview'],
      poster_path: json['poster_path'],
      popularity: json['popularity']
    );
  }

}