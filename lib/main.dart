import 'package:flutter/material.dart';
import 'package:my_firstapp/account.dart';
import 'package:my_firstapp/add.dart';
import 'package:my_firstapp/chat.dart';
import 'package:my_firstapp/home_screen.dart';
import 'package:my_firstapp/my_ads.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BottomNavController (),
    );
  }
}

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;

  final _pages = [
    HomeScreen(),
  MyAds(),
  Add(),
  Chat(),
  Account(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
currentIndex: _currentIndex,
        onTap: (index){


  setState(() {
    _currentIndex= index;
  });





        },
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
            label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),
              label: "My Ads"
          ),

          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline),
              label: "Add"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),
              label: "Chat"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),
              label: "Account"
          ),

        ],

         selectedItemColor: Color(0xFF5364F4),
        unselectedItemColor: Color(0xFFC4C4C40),
      ),
      body: _pages[_currentIndex],
    );
  }
}


