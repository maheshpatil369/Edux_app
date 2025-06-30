import 'package:flutter/material.dart';

class NotificationCenterPage extends StatelessWidget {
  const NotificationCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notification Center")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.deepPurple),
            title: Text("Your application was submitted successfully!"),
            subtitle: Text("Today, 9:00 AM"),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.notifications, color: Colors.green),
            title: Text("New scholarship matching your profile available."),
            subtitle: Text("Yesterday, 4:20 PM"),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.notifications_active, color: Colors.redAccent),
            title: Text("Upcoming deadline: SOP submission"),
            subtitle: Text("2 days left"),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.notifications_none, color: Colors.orange),
            title: Text("You have a mock test result to review."),
            subtitle: Text("June 25, 3:45 PM"),
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.notifications, color: Colors.blueGrey),
            title: Text("Mentor replied to your application query."),
            subtitle: Text("June 23, 8:10 AM"),
          ),
        ],
      ),
    );
  }
}