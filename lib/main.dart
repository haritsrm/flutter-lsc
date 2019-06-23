import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "screens/dashboard.dart";
import "screens/assessments/assessment.dart";
import "screens/history.dart";
import 'transitions/transitions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Monaco_Linux',
      ),
      home: SplashScreen(),
    );
  }
  
}

class BottomNavigation extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>{
  int _selectedPage = 0;
  final _pageOptions = [
    Dashboard(),
    Assessment(),
    History(),
  ];

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        body: PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          children: _pageOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 32,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
            pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xFF333366),
                      Color(0xFF736AB7),
                    ],
                  ).createShader(bounds);
                },
                child: Icon(Icons.home),
              ),
              icon: Icon(Icons.home),
              title: Text('Home', style: TextStyle(
                  color: Color(0xFF736AB7),
                ),
              )
            ),
            BottomNavigationBarItem(
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xFF333366),
                      Color(0xFF736AB7),
                    ],
                  ).createShader(bounds);
                },
                child: Icon(Icons.book),
              ),
              icon: Icon(Icons.book),
              title: Text('Assessment', style: TextStyle(
                  color: Color(0xFF736AB7),
                ),
              )
            ),
            BottomNavigationBarItem(
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xFF333366),
                      Color(0xFF736AB7),
                    ],
                  ).createShader(bounds);
                },
                child: Icon(Icons.history),
              ),
              icon: Icon(Icons.history),
              title: Text('Histori', style: TextStyle(
                  color: Color(0xFF736AB7),
                ),
              )
            ),
          ]
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(SlideRightRoute(page: BottomNavigation()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white54),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Color(0xFF333366),
                        radius: 50.0,
                        child: Icon(
                          CupertinoIcons.book,
                          color: Colors.white,
                          size: 50.0
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'Link Study Center',
                        style: TextStyle(
                          color: Color(0xFF333366),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  
}


