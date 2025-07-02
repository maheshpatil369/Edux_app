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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xFF2D3A8C),
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameController.text,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(emailController.text, style: TextStyle(color: Colors.grey[700])),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() => isEditing = !isEditing),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 16,
                  child: Icon(isEditing ? Icons.check : Icons.edit, size: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          _inputField("Name", nameController),
          const SizedBox(height: 15),
          _inputField("Email", emailController),
          const SizedBox(height: 30),
          const Text("Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Card(
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                _toggleTile(
                  title: "Enable Notifications",
                  value: notificationsEnabled,
                  onChanged: (val) => setState(() => notificationsEnabled = val),
                ),
                _toggleTile(
                  title: "Dark Mode",
                  value: darkModeEnabled,
                  onChanged: (val) => setState(() => darkModeEnabled = val),
                ),
              ],
            ),
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
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      enabled: isEditing,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFF2D3A8C)),
        ),
      ),
    );
  }

  Widget _toggleTile({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: isEditing ? onChanged : null,
      activeColor: Colors.indigo,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
