import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Signup Page", style: TextStyle(fontSize: 30)),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(decoration: InputDecoration(labelText: "Name")),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(decoration: InputDecoration(labelText: "Email")),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(obscureText: true, decoration: InputDecoration(labelText: "Password")),
            ),
            ElevatedButton(
              onPressed: () {
                print("Signup Pressed");
              },
              child: const Text("Sign Up"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Go back to login or welcome
              },
              child: const Text("Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}
