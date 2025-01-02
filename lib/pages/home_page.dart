import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/config/app_routes.dart';
import 'package:newproject/config/app_strings.dart';
import 'package:newproject/styles/app_colors.dart';
import 'package:newproject/styles/app_text.dart';

import '../components/post_items.dart';
import '../components/toolbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(title:AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: Icon(Icons.location_on_outlined , color: Colors.white,),
          ),
        ],),
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
