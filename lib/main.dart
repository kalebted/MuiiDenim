// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:muiidenim/screens/location.dart';
import 'package:muiidenim/screens/messages.dart';
import 'package:muiidenim/screens/notifications.dart';
import 'package:muiidenim/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        'screens/messages': (context) => Messages(),
        'screens/location': (context) => Location(),
        'screens/notifications': (context) => Notifications(),
        'screens/profile': (context) => Profile(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Color primaryColor = Color.fromARGB(255, 255, 99, 85);

  final Color primary2 = Color.fromARGB(255, 255, 169, 161);

  final Color primary3 = Color.fromARGB(255, 255, 222, 222);

  final Color secondaryColor = Color.fromARGB(255, 0, 150, 136);

  final Color secondary2 = Color.fromARGB(255, 117, 205, 197);

  int myIndex = 0;
  List<Widget> widgetList = [
    Messages(),
    Location(),
    Notifications(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'muiidenim',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: secondaryColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: secondaryColor,
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromARGB(153, 230, 230, 230),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: myIndex,
          children: widgetList,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Color.fromARGB(255, 219, 41, 191),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_sharp),
              label: 'Location'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
            ),
          ]),
    );
  }
}
