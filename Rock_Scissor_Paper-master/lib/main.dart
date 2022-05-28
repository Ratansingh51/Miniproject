import 'package:flutter/material.dart';
import 'package:crgames/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rock Scissor Paper',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rock Scissor Paper',style: TextStyle(fontFamily:'Uchen',color: Colors.black,fontWeight: FontWeight.bold),),
          titleSpacing: 5.0,
          elevation: 10.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent,Colors.yellow,Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,

                )
            ),
          ),
        ),
        body:Home(),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.redAccent,Colors.white,Colors.yellowAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage:AssetImage(''),
                      radius: 30.0,
                    ),
                    Text('Developer Details :\nAll group members \nB.tech - CSE\nGLA University,Mathura',style: TextStyle(fontFamily: 'OtomanopeeOne'),)
                  ],
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.add_call),
                  title: Text('Phone No.',style: TextStyle(fontFamily: 'OtomanopeeOne'),),
                  subtitle: Text('+919058238609'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email',style: TextStyle(fontFamily: 'OtomanopeeOne'),),
                  subtitle: Text('namans1651@gmail.com.com'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('GitHub',style: TextStyle(fontFamily: 'OtomanopeeOne'),),
                  subtitle: Text('Rock paper scissor'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.zoom_out_outlined),
                  title: Text('Website',style: TextStyle(fontFamily: 'OtomanopeeOne'),),
                  subtitle: Text('www.rock paper scissor site'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
