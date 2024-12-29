import 'package:flutter/material.dart';
import 'package:newproject/components/app_text_field.dart';
import 'package:newproject/components/toolbar.dart';
import 'package:newproject/config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: Column(
        children: [
          AppTextField(hint: AppStrings.firstName),
          AppTextField(hint: AppStrings.lastName),
          AppTextField(hint: AppStrings.phoneNumber),
          AppTextField(hint: AppStrings.location),
        ],
      ),
    );
  }
}
