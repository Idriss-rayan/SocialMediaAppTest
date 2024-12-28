import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      appBar: Toolbar(title:
      '5minuteflutter',
        actions: [],),
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
