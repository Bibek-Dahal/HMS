import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hms/screens/kubh_screen.dart';
import 'package:hms/screens/kugh_screen.dart';
import 'package:hms/screens/social_hall.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: College',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HMS"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              // height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      // width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 1.0),
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: const Image(
                          image: AssetImage('assets/images/KU.jpg')));
                },
              );
            }).toList(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const KUBH()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Center(child: Text("KUBH")),
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const KUGH()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Center(child: Text("KUGH")),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SocialHall()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Center(child: Text("Social Hall")),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ],
            ),
          )
          // Flex(
          //     direction: Axis.horizontal, // this is unique
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     mainAxisSize: MainAxisSize.max,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     verticalDirection: VerticalDirection.down,
          //     textDirection: TextDirection.rtl,
          //     children: <Widget>[
          //       Container(
          //         width: 100,
          //         height: 100,
          //         decoration: BoxDecoration(color: Colors.grey),
          //       ),
          //       Container(
          //         width: 100,
          //         height: 100,
          //         decoration: BoxDecoration(color: Colors.red),
          //       ),
          //       Container(
          //         width: 100,
          //         height: 100,
          //         decoration: BoxDecoration(color: Colors.blue),
          //       ),
          //       Container(
          //         width: 100,
          //         height: 100,
          //         decoration: BoxDecoration(color: Colors.blue),
          //       )
          //     ]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Reservation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cable),
            label: 'Finance',
          ),
        ],
        showUnselectedLabels: true,
        unselectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 133, 66, 11),
        onTap: _onItemTapped,
      ),
    );
  }
}
