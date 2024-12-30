import 'package:flutter/cupertino.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key,  this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: Image.asset(
        'assets/temp/rayan.jpg',
        width: size,
        height: size,
      ),
    );
  }
}
