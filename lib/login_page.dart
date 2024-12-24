import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade300,
              Colors.orange.shade200,
              Colors.blue.shade200,
            ],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Hello welcome back !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Urbanist'
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Login to continue",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
                hintText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                  hintText: "Password",
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
              width: 250,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFF6A206)),
                ),
                onPressed: () {
                  print("the button is clicked");
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
            SizedBox(
              height: 62,
            ),
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
                  )
                )
              ),
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
          ],
        ),
      ),
    );
  }
}
