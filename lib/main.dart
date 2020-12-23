import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> genre = ["Adventure", "Action", "Comedy", "Sci-Fi", "Drama", "Fantasy", "Horror", "Mystery", "Romance", "Thriller", "Western"];
  var currentItemSelected = "Adventure";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Movie Picker'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [

            Text('Pick a Genre:', style: new TextStyle(fontSize: 50.0),),
            DropdownButton<String>(
              value: currentItemSelected,
              items: genre.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String newValueSelected){
                setState(() {
                  this.currentItemSelected = newValueSelected;
                  print(newValueSelected + " selected");
                });
              },
            ),
            new Icon(Icons.local_movies, size: 60.0, color: Colors.amber,),
          ],
        ),
      )
    ), );
  }
}