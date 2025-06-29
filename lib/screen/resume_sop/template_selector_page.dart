import 'package:flutter/material.dart';

class TemplateSelectorPage extends StatelessWidget {
  const TemplateSelectorPage({Key? key}) : super(key: key);

  final List<String> templates = const ["Modern", "Professional", "Minimal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Resume Template")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: templates.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(templates[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${templates[index]} template selected")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
