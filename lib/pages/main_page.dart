import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/pages/home_page.dart';
import 'package:newproject/pages/profile_page.dart';
import 'package:newproject/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex.index], bottomNavigationBar: MyBottomNavigation(
      currentIndex: currentIndex,
      onTap: (value){
          setState(() {
            currentIndex = value;
          });
    },
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
    ProfilePage(),
  ];
}

enum Menus {
  home,
  favorite,
  add,
  messages,
  user,
}

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyBottomNavigation({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.home),
                          icon: Icon(
                            Icons.home,
                            color: Colors.grey,
                          ))),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.favorite),
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ))),
                  // Spacer(),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.messages),
                          icon: Icon(
                            Icons.messenger,
                            color: Colors.grey,
                          ))),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(Menus.user),
                          icon: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.grey,
                          ))),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                    "assets/svg/add.svg",
                  colorFilter:
                  ColorFilter.mode(
                    currentIndex==Menus.home?
                      Colors.black : Colors.black.withOpacity(0.3), BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}






















