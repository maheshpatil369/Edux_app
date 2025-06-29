import 'package:flutter/material.dart';
import 'custom_header.dart';
import 'custom_footer.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget child;

  const BaseScaffold({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(title: title),
      bottomNavigationBar: const CustomFooter(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}
