import 'package:flutter/material.dart';
AppBar tpobar = AppBar(
  backgroundColor: Colors.black,
  title: Image.asset('assets/ytdark.png',
  fit: BoxFit.cover,
  width: 100.0,
  ),
  actions: <Widget>[
    Padding(padding: EdgeInsets.only(right:20.0),
    child: Icon(
      Icons.cast,
    ),
    ),
    Padding(padding: EdgeInsets.only(right:20.0),
    child: Icon(
      Icons.videocam,
    ),
    ),
    Padding(padding: EdgeInsets.only(right:20.0),
    child: Icon(
      Icons.search,
    ),
    ),
    Padding(padding: EdgeInsets.only(right:20.0),
    child: Icon(
      Icons.account_circle,
    ),
    ),
  ],
);

Color normalcolor = Colors.white24;
Color selectedColor = Colors.white;


BottomAppBar bottomAppBar = BottomAppBar(
color:Colors.black,
child: Container(
  color: Colors.black,
  height: 55.0,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Icon(
            Icons.home,
            color: selectedColor,
          ),
          Text("Home",style: TextStyle(color: selectedColor),)
        ]
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Icon(
            Icons.whatshot,
            color: normalcolor,
          ),
          Text("Trending",style: TextStyle(color: normalcolor),)
        ]
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Icon(
            Icons.subscriptions,
            color: normalcolor,
          ),
          Text("Subscriptions",style: TextStyle(color:normalcolor),)
        ]
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Icon(
            Icons.email,
            color: normalcolor,
          ),
          Text("Inbox",style: (TextStyle(color: normalcolor)),)
        ]
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Icon(
            Icons.folder,
            color: normalcolor,
          ),
          Text("Library",style: TextStyle(color:normalcolor),)
        ]
      )
    ]
  ),),
);