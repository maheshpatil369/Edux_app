import 'package:flutter/material.dart';

class CollegeFilterPage extends StatelessWidget {
  const CollegeFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filter Colleges")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Apply Filters", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Stream"),
              items: const [
                DropdownMenuItem(value: "Engineering", child: Text("Engineering")),
                DropdownMenuItem(value: "Business", child: Text("Business")),
              ],
              onChanged: (_) {},
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: "Max Tuition Fees"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: "Minimum Rank"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/college_list');
              },
              child: const Text("Apply & Show Colleges"),
            ),
          ],
        ),
      ),
    );
  }
}
