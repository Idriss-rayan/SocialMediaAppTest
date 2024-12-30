import 'package:flutter/material.dart';
import 'package:newproject/components/app_text_field.dart';
import 'package:newproject/components/toolbar.dart';
import 'package:newproject/components/user_avatar.dart';
import 'package:newproject/config/app_strings.dart';
import 'package:newproject/styles/app_colors.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              AppTextField(hint: AppStrings.firstName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.location),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.birthday),

              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: RadioListTile(
                      title: Text(AppStrings.male),
                      value: Gender.male,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: RadioListTile(
                      title: Text(AppStrings.female),
                      value: Gender.female,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: RadioListTile(
                      title: Text(AppStrings.other),
                      value: Gender.other,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.other;
                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
