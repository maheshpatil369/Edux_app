import 'package:flutter/material.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16));

    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Welcome to the EduX Dashboard!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),

            // 🔹 AI & Course Recommendation
            const Text("AI & Course Recommendation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/profile_form'),
              style: buttonStyle,
              child: const Text("Open Profile Form"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/course_suggestions'),
              style: buttonStyle,
              child: const Text("View Course Suggestions"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/skill_gap_analysis'),
              style: buttonStyle,
              child: const Text("Analyze Skill Gaps"),
            ),

            const SizedBox(height: 30),

            // 🔹 Career Simulation
            const Text("Career Simulation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/career_simulation'),
              style: buttonStyle,
              child: const Text("Career Path Simulation"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/update_profile'),
              style: buttonStyle,
              child: const Text("Update Career Profile"),
            ),

            const SizedBox(height: 30),

            // 🔹 College Shortlisting
            const Text("College Shortlisting", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/college_filter'),
              style: buttonStyle,
              child: const Text("Filter Colleges"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/college_list'),
              style: buttonStyle,
              child: const Text("View College List"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/college_detail'),
              style: buttonStyle,
              child: const Text("College Details"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admission_probability'),
              style: buttonStyle,
              child: const Text("Admission Probability"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/application_deadlines'),
              style: buttonStyle,
              child: const Text("Application Deadlines"),
            ),
          ],
        ),
      ),
    );
  }
}
