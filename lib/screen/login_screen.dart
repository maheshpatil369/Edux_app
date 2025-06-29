import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login Page", style: TextStyle(fontSize: 30)),
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
                print("Login Pressed");
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text("Don't have an account? Sign up"),
            )
          ],
        ),
      ),
    );
  }
}
