import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool isEditing = false;

  final nameController = TextEditingController(text: "Mahesh Patil");
  final emailController = TextEditingController(text: "mahesh@example.com");

  bool notificationsEnabled = true;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isEditing = !isEditing;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: Icon(
                          isEditing ? Icons.check : Icons.edit,
                          size: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: nameController,
              enabled: isEditing,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: emailController,
              enabled: isEditing,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 30),
            const Text("Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SwitchListTile(
              title: const Text("Enable Notifications"),
              value: notificationsEnabled,
              onChanged: isEditing ? (value) => setState(() => notificationsEnabled = value) : null,
            ),
            SwitchListTile(
              title: const Text("Dark Mode"),
              value: darkModeEnabled,
              onChanged: isEditing ? (value) => setState(() => darkModeEnabled = value) : null,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Logged out")),
                );
              },
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
