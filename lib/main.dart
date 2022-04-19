import 'package:flutter/material.dart';
import 'package:servicegy/pages/auth/login.dart';
import 'package:servicegy/pages/auth/otp.dart';
import 'package:servicegy/pages/other/offline.dart';
import 'package:servicegy/pages/auth/input-details.dart';
import 'package:servicegy/pages/home/nav.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/login', routes: {
    '/login': (context) => Login(),
    '/otp': (context) => OTP(),
    '/offline': (context) => offline(),
    '/input-details': (context) => InputDeatils(),
    '/home': (context) => NavBar(),
  }));
}
