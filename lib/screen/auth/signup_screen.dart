import 'package:flutter/material.dart';  // ✅ ONLY this import

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);  // ✅ Class name must match

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
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Account created! Please login.')),
                );
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.pushReplacementNamed(context, '/login');
                });
              },
              child: const Text("Sign Up"), // ✅ Keep text simple, no styling needed here
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}
