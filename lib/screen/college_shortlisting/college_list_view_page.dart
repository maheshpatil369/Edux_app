import 'package:flutter/material.dart';
import '../../widgets/base_scaffold.dart';

class CollegeListViewPage extends StatelessWidget {
  const CollegeListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'College List',
      currentIndex: 1,
      onTabChange: (index) => _handleTabChange(context, index),
      child: ListView(
        children: const [
          ListTile(title: Text("Harvard University")),
          ListTile(title: Text("Stanford University")),
          ListTile(title: Text("MIT")),
        ],
      ),
    );
  }

  void _handleTabChange(BuildContext context, int index) {
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
        Navigator.pushReplacementNamed(context, '/user_profile');
        break;
    }
  }
}
