import 'package:flutter/material.dart';


class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image(image: )
            Text("Hello there"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/signin');
                    },
                    child: Text("Sign In")),
                SizedBox(
                  width: 24,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/signup');
                    },
                    child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}