import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class AssistantFloatingButton extends StatefulWidget {
  const AssistantFloatingButton({super.key});

  @override
  State<AssistantFloatingButton> createState() => _AssistantFloatingButtonState();
}

class _AssistantFloatingButtonState extends State<AssistantFloatingButton> {
  bool showChatBox = false;
  final TextEditingController _controller = TextEditingController();

  // Base64 encoded image of assistant icon
  final String base64Robot =
      'iVBORw0KGgoAAAANSUhEUgAAAJYAAACWCAYAAACMRWrdAAAACXBIWXMAAA7EAAAOxAGVKw4b...'; // Shortened for space

  Uint8List get robotBytes => base64Decode(base64Robot);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (showChatBox)
          Positioned(
            right: 20,
            bottom: 80,
            child: Container(
              width: 300,
              height: 400,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 2)),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: MemoryImage(robotBytes),
                      ),
                      const SizedBox(width: 10),
                      const Text("Hi! What can I help you with?"),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          setState(() => showChatBox = false);
                        },
                      ),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView(
                      children: const [
                        ListTile(title: Text("How to shortlist a college?")),
                        ListTile(title: Text("Help me write my SOP")),
                      ],
                    ),
                  ),
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Type your question...",
                      suffixIcon: Icon(Icons.send),
                    ),
                  ),
                ],
              ),
            ),
          ),
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            backgroundColor: Colors.indigo,
            child: const Icon(Icons.smart_toy),
            onPressed: () => setState(() => showChatBox = !showChatBox),
          ),
        ),
      ],
    );
  }
}
