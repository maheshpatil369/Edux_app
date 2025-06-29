import 'package:flutter/material.dart';

class ReminderSettingsPage extends StatefulWidget {
  const ReminderSettingsPage({Key? key}) : super(key: key);

  @override
  State<ReminderSettingsPage> createState() => _ReminderSettingsPageState();
}

class _ReminderSettingsPageState extends State<ReminderSettingsPage> {
  bool emailReminders = true;
  bool smsReminders = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reminder Settings")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text("Email Reminders"),
              value: emailReminders,
              onChanged: (val) => setState(() => emailReminders = val),
            ),
            SwitchListTile(
              title: const Text("SMS Reminders"),
              value: smsReminders,
              onChanged: (val) => setState(() => smsReminders = val),
            ),
          ],
        ),
      ),
    );
  }
}
