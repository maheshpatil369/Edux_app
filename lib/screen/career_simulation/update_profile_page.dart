import 'package:flutter/material.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  final TextEditingController goalController = TextEditingController();
  final TextEditingController interestController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update Profile")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Edit your career preferences", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            TextField(
              controller: goalController,
              decoration: const InputDecoration(labelText: "Career Goal"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: interestController,
              decoration: const InputDecoration(labelText: "Interests"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: experienceController,
              decoration: const InputDecoration(labelText: "Experience"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Later: Update data in database
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Profile updated!")),
                );
              },
              child: const Text("Save Changes"),
            )
          ],
        ),
      ),
    );
  }
}
