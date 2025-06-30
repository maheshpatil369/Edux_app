import 'package:flutter/material.dart';
import '../../widgets/base_scaffold.dart';

class CollegeDetailPage extends StatelessWidget {
  const CollegeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'College Details',
      currentIndex: 1,
      onTabChange: (index) => _handleTabChange(context, index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("College Name: Stanford University", style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text("Rank: #2"),
          Text("Fees: \$50,000/year"),
          Text("Location: California"),
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
