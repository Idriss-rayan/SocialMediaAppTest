import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom navigation container"),
      // ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/favorite.svg'),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/mess.svg'),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/mess.svg'),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/user.svg'),
            label: 'Users',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    Center(
      child: Text('User'),
    ),
  ];
}
