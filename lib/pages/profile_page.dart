import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/components/toolbar.dart';
import 'package:newproject/config/app_routes.dart';
import 'package:newproject/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value){
              switch(value){
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('good');
                  break;

                default:
              }
            },
              icon: const Icon(Icons.more_vert_rounded),
              itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('Edit'),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text('Log out'),
                value: ProfileMenu.logout,
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              'assets/temp/post.png',
              width: 90,
              height: 90,
            ),

          ),
          Text(
            'sadio mane',
            style: AppText.header2,
          ),
          Text(
            'Senegal',
            style: AppText.subtitle3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followings'),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 20,
          ),
          Text("data"),
        ],
      ),
    );
  }
}
