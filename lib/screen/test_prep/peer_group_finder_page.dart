import 'package:flutter/material.dart';

class PeerGroupFinderPage extends StatelessWidget {
  const PeerGroupFinderPage({Key? key}) : super(key: key);

  final List<Map<String, String>> peers = const [
    {"name": "Ravi Kumar", "goal": "GRE 320+"},
    {"name": "Sneha Sharma", "goal": "TOEFL 110+"},
    {"name": "Ankit Das", "goal": "GRE 330"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Find Peer Groups")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: peers.length,
        itemBuilder: (context, index) {
          final peer = peers[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(peer['name']!),
            subtitle: Text("Target: ${peer['goal']}"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("Connect"),
            ),
          );
        },
      ),
    );
  }
}
