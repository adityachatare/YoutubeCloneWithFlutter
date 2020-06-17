import 'package:flutter/material.dart';
import 'package:youtube_clone/appbars.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowCheckedModeBanner: true,
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.white
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Widget eachVideo(String assets, String title)
{
  return Column(children: <Widget>[
    Stack(
      children: <Widget>[
        Image.asset(assets),
        Positioned.fill(
          bottom: 10.0,
          right: 10.0,

          child: Align(alignment: Alignment.bottomRight,
          child: Container(
            color:Colors.black,
            padding: EdgeInsets.all(4.0),
            child: Text(
              "20:10"
            ),
          ),))
      ],
    ),
    SizedBox(
      height: 5.0,
    ),
    Container(
      color: Colors.black,
      child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/unnamed.webp'),),
      title: Text("$title", textAlign: TextAlign.start,

      ),
      subtitle: Text("Hitesh Choudhary - 5.2K Views - Streamed 14 hours ago"),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      ),
    ),
  ],);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tpobar,
      bottomNavigationBar: bottomAppBar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            eachVideo("assets/s1.jpeg", "Saturday live for Programmers"),
            eachVideo("assets/m2.jpg", "Can you take this mobile app challenge?"),
            eachVideo("assets/m1.jpg", "What is machine learning and how to learn it?"),
            eachVideo("assets/thumb3.png", "Working With Databases"),
            eachVideo("assets/thumb4.png", "Working With Databases"),

            

        ],)
      ),
    );
  }
}