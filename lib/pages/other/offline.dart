import 'package:flutter/material.dart';

class offline extends StatefulWidget {
  const offline({Key? key}) : super(key: key);

  @override
  State<offline> createState() => _offlineState();
}

class _offlineState extends State<offline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Offline Screen'),
      ),
    );
  }
}
