import 'package:flutter/material.dart';

class SocialHall extends StatefulWidget {
  const SocialHall({super.key});

  @override
  State<SocialHall> createState() => _SocialHallState();
}

class _SocialHallState extends State<SocialHall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Hall"),
      ),
      body: Center(child: Text("Social Hall")),
    );
  }
}
