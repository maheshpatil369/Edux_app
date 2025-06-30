import 'package:flutter/material.dart';

class CollegeListViewPage extends StatelessWidget {
  const CollegeListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(title: Text("Harvard University")),
        ListTile(title: Text("Stanford University")),
        ListTile(title: Text("MIT")),
      ],
    );
  }
}
