import 'package:flutter/material.dart';
import 'custom_header.dart';
import 'custom_footer.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final int currentIndex;
  final Function(int) onTabChange;

  const BaseScaffold({
    super.key,
    required this.title,
    required this.child,
    required this.currentIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(title: title),
      bottomNavigationBar: CustomFooter(
        currentIndex: currentIndex,
        onTap: onTabChange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}
