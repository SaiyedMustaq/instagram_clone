import 'package:flutter/material.dart';
import 'package:instagramclone/LikePage.dart';
import 'package:instagramclone/ProfilePage.dart';
import 'package:instagramclone/SearchPage.dart';
import 'package:instagramclone/UploadPage.dart';

import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  Widget callpage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return SearchPage();
      case 2:
        return UploadPage();
      case 3:
        return LikePage();
      case 4:
        return ProfilePage();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: callpage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: new Text('Home', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: new Text('Home', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: new Text('Home', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: new Text('Home', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: new Text('Home', style: TextStyle(color: Colors.black)),
          )
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
