import 'package:flutter/material.dart';
import 'package:servicegy/pages/auth/login.dart';
import 'package:servicegy/pages/auth/otp.dart';
import 'package:servicegy/pages/other/offline.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/login', routes: {
    '/login': (context) => Login(),
    '/otp': (context) => OTP(),
    '/offline': (context) => offline(),
  }));
}
