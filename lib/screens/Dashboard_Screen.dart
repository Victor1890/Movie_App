import 'package:flutter/material.dart';

import 'package:flutter_movie/widget/horizontl_list_items.dart';
import 'package:flutter_movie/widget/top_rated_list_items.dart';
import 'package:flutter_movie/widget/vertical_list_items.dart';
import '../model/movie.dart';

class DashboarbScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Movies App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: (){}
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Recommended", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ),),
                  FlatButton(
                    child: Text("View All"),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => HorizontalListItems(i),
              ),
            ),

            SizedBox(height: 3,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Best of 2020", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ),),
                  FlatButton(
                    child: Text("View All"),
                    onPressed: (){},
                  ),
                ],
              ),
            ),

            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: bestMovieList.length,
                itemBuilder: (ctx, i) => VerticalListItems(i),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Top Rated Movie", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ),),
                  FlatButton(
                    child: Text("View All"),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => TopRatedItems(i)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
