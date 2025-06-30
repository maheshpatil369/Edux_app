import 'package:flutter/material.dart';
import '../../widgets/base_scaffold.dart';

class AdmissionProbabilityPage extends StatelessWidget {
  const AdmissionProbabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Admission Probability',
      currentIndex: 1,
      onTabChange: (index) => _handleTabChange(context, index),
      child: Column(
        children: const [
          Text("Your Admission Chances:", style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Text("Stanford University: 65%"),
          Text("MIT: 55%"),
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
