import 'package:flutter/material.dart';

class KUBH extends StatefulWidget {
  const KUBH({super.key});

  @override
  State<KUBH> createState() => _KUBHState();
}

class _KUBHState extends State<KUBH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KUBH"),
      ),
      body: Center(child: Text("KUBH")),
    );
  }
}
