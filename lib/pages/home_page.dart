import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/styles/app_colors.dart';
import 'package:newproject/styles/app_text.dart';

import '../components/post_items.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItems(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 30; i++) {
      users.add('User number $i');
    }
  }
}
