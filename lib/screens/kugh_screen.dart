import 'package:flutter/material.dart';

class KUGH extends StatefulWidget {
  const KUGH({super.key});

  @override
  State<KUGH> createState() => _KUGHState();
}

class _KUGHState extends State<KUGH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KUGH"),
      ),
      body: Center(child: Text("KUGH")),
    );
  }
}
