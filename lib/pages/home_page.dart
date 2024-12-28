import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 4,
        centerTitle: false,
        title: Text(
          "5minute flutter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }



  Widget _userItem(){
    return Row(
      children: [
        Image.asset(
          "assets/temp/img.png",
          width: 60,
          height: 60,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          "Sarah Fernandez",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  List<Widget> mockUsersFromServer(){
    List<Widget> users = [];
    for (var i = 0; i<30; i++){
      users.add(_userItem());
    }
    return users;
  }
}
