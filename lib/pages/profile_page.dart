import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/temp/img.png',
            width: 90,
            height: 90,
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

                  Text('472' , style: AppText.header2,),
                  Text('Followers'),
                ],
              ),

              Column(
                children: [

                  Text('472' , style: AppText.header2,),
                  Text('Posts'),
                ],
              ),

              Column(
                children: [

                  Text('472' , style: AppText.header2,),
                  Text('Followings'),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 20,),
          Text("data"),
        ],
      ),
    );
  }
}
