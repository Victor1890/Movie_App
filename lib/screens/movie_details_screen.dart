import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {

  static const routeName = "/movie-details";

  @override
  Widget build(BuildContext context) {

    final routeArgs = 
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff4f4f4),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(routeArgs["imageUrl"])
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(child: Text(routeArgs['title'], style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.2 ))),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.timer, 
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10,),
                        Text(routeArgs['duration'], style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today, 
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10,),
                        Text(routeArgs['year'], style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.star_border, 
                          size: 40,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 10,),
                        Text(routeArgs['rating'], style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Text(
              routeArgs['description'],
              style: TextStyle(fontSize: 15, height: 1.2),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              onPressed: () => {},
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.play_circle_outline),
                  Text("Watch Trailer", style: TextStyle(fontSize: 15),)
                ],
              ),
            ),
          ),

          Expanded(
            child: RaisedButton(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              onPressed: () => {},
              color: Colors.yellowAccent,
              textColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  Container(height: 5, width: 5,),
                  Text("Buy Now", style: TextStyle(fontSize: 15),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}