import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTestfield extends StatelessWidget {
  final String hint;
  const AppTestfield({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        hintText: "Username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
