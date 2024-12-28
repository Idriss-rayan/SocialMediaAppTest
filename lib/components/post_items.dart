import 'package:flutter/cupertino.dart';

import '../styles/app_text.dart';

class PostItems extends StatelessWidget {
  final String user;
  const PostItems({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        //vertical: 12,
      ),
      child: Column(
        children: [
          Row(
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
                  user,
                  style: AppText.subtitle3 //TextStyle(color: Colors.white),
                  ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post.png'),
          SizedBox(
            height: 12,
          ),
          Text(
            'this new technology is so great this new technology is so great this new technology is so great this new technology is so great this new technology is so great this new technology is so great',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
