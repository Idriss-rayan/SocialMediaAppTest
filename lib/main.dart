import 'package:flutter/material.dart';
import 'package:newproject/pages/home_page.dart';
import 'package:newproject/pages/login_page.dart';
import 'package:newproject/pages/main_page.dart';
import 'package:newproject/pages/test_page.dart';
import 'package:newproject/styles/app_colors.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,

      ),
      //home: TestPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),

      },
    );
  }
}
