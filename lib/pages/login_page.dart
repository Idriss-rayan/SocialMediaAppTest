import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newproject/config/app_routes.dart';
import 'package:newproject/config/app_strings.dart';
import 'package:newproject/pages/home_page.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://localhost:53244/login';

class LoginPage extends StatelessWidget {
  final loginRoute = '$baseUrl/login';
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  AppStrings.hellowelcome,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Urbanist'),
                ),
                SizedBox(height: 16),
                Text(
                  AppStrings.logintocontinue,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      hintText: AppStrings.password,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide.none,
                      )),
                ),
                TextButton(
                  onPressed: () {
                    print("button clickable");
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(
                  //width: 250,
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFF6A206)),
                    ),
                    onPressed: () {
                      doLogin();
                      //Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.black,
                        //backgroundColor: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Or sign in with",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ))),
                  onPressed: () {
                    print("button clicked");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/g.png",
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Login with Google",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                  ),
                  onPressed: () {
                    print("button clicked");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/f.png",
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Login with facebook",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "Don't have account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> doLogin() async {
    final username = usernameController.text;
    final password = passwordController.text;

    final body = jsonEncode({
      'username': username,
      'password': password,
    });

    final response = await http.post(
      Uri.parse(loginRoute),
      headers: {
        'Content-Type': 'application/json', // Ajouter l'en-tête Content-Type
      },
      body: body,
    );

    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      print('Erreur lors de la connexion');
      throw Exception('Erreur ${response.statusCode}');
    }
  }
}