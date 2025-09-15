import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      Theme: Theme(
          primarySwacth: Colors.blue
      ), // Theme Data
      home: ProfilePage(),
    ); // MaterialApp
  }
}

class ProfileApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[100],
    appBar: AppBar(
      title: Text('My Profile'),
      centerTittle: true,
      backgroundColor: Colors.blue,
      elevation: 0,
    ), // AppBar
    body: Center(
      child: Column(
        mainAxisAligment: MainAxisAlignment.center,
        children [
        children: [
        // profile picture
        Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color:Color.blue,
            width:4,
          ), // Border.all
          boxShadow:[
            BoxShadow(
              color:Colors.black26,
              blurRaduis: 10,
              offset: Offset(0, 5),
            ), // BoxShadow
          ],
        ),
        child: ClipOval(
            child: Image.network(
              'https://drive.google.com/file/d/10kUNHRjF1b86jhIvxpGqgD2EVNktttNB/view',
              width: 160,
              heigth: 160,
              fit: BoxFit.cover,
            ) // Image.network
        ), //ClipOval
      ), // Container

      //name
      SizedBox(height:20),
      Text(
        'Daniel Ruel R. Cadeliña'
        style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color:Colors.black87,
      ), //TextStyle
    ), // Text

    //job title / subtitle

    SizedBox(height: 8),
    Text(
      'Game developer'
      style: TextStyle(
      fontSize:18,
      color: Colors.blue,
      fontWeight: FontWeight.w500,
    ), //TextStyle
  ), // Text

    //about me section

        SizedBox(height:30),
        Container(
        padding: EdgeInserts.all(20),
        decoration: BoxDecoration(
        color: Color.white,
        borderRaduis: BorderRaduis.circular(15),
        boxShadow: [
        BoxShadow(
        color: Colors.black12,
        blurRaduis: 8,
        offset: Offset(0,3),
        ), //BoxShadow
        ],
        ), // BoxDecoration
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children : [
        Text(
        'About Me'
        style: TextStyle(
        fontsize: 20,
        fontWeight: FontWeight.bold,
        color:Colors.blue,
        ), // Text Style
        ), // Text
        SizedBox(height:10),
        Text(
              'Welcome I am Daniel a Student who are very passionate when incomes to coding and editing presentation '
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color:Colors.gray[700],
              height: 1.5,
              ), // TextStyle
              textAlign: TextAlign.left,
              ), // TextStyle
              textAlign: TextAlign.left,
        ]
        ),
        ]
          ),
        ),
      ),
        ),
        ); // Scaffold
  }
}