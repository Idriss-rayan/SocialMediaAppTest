import 'package:flutter/material.dart';
import 'package:newproject/login_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Urbanist'),
      home: LoginPage(),
    );
  }
}
