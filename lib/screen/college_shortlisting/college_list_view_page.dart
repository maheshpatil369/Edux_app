import 'package:flutter/material.dart';

class CollegeListViewPage extends StatelessWidget {
  const CollegeListViewPage({Key? key}) : super(key: key);

  final List<String> colleges = const [
    "IIT Bombay",
    "IIT Delhi",
    "IIM Bangalore",
    "NIT Trichy",
    "BITS Pilani"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Colleges Found")),
      body: ListView.builder(
        itemCount: colleges.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(colleges[index]),
            subtitle: const Text("Tap to view details"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/college_detail');
            },
          );
        },
      ),
    );
  }
}
