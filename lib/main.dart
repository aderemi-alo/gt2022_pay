import 'package:flutter/material.dart';
import 'package:gt2022/screens/screens.dart';

void main() => runApp(MaterialApp(
      title: 'GT2022',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/phoneVerification': (context) => const PhoneVerificationScreen(),
      },
    ));
