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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/offline.png'),
          SizedBox(height: 5.0),
          Center(
              child: Text(
            'You’re Offline',
            style: TextStyle(
                fontFamily: 'MulishRegular',
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          )),
          SizedBox(height: 5.0),
          Container(
            width: 300.0,
            padding: const EdgeInsets.all(8.0),
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
            child: Text(
                'No internet or slow connection found. Check your connection or Try again',
                style: TextStyle(
                    fontFamily: 'MulishRegular',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600])),
          )
        ]),
      ),
    );
  }
}
