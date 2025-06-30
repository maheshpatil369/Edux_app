import 'package:flutter/material.dart';
import 'package:edux_app/widgets/base_scaffold.dart';

class TemplateSelectorPage extends StatelessWidget {
  const TemplateSelectorPage({Key? key}) : super(key: key);

  final List<String> templates = const ["Modern", "Professional", "Minimal"];

  void handleTabChange(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/dashboard');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/college_list');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/resume_builder');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/profile_form');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Select Resume Template",
      currentIndex: 2, // Resume section tab index
      onTabChange: (index) => handleTabChange(context, index),
      child: ListView.builder(
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
