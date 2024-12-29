import 'package:flutter/material.dart';
import 'package:newproject/components/app_testfield.dart';
import 'package:newproject/components/toolbar.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit profile'),
      body: Column(
        children: [
          AppTestfield(hint: "First name"),
          AppTestfield(hint: "Last name"),
          AppTestfield(hint: "Phone number"),
          AppTestfield(hint: "Location"),
        ],
      ),
    );
  }
}
