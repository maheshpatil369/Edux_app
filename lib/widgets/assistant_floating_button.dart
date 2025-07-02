import 'package:flutter/material.dart';

class AssistantFloatingButton extends StatefulWidget {
  const AssistantFloatingButton({super.key});

  @override
  State<AssistantFloatingButton> createState() => _AssistantFloatingButtonState();
}

class _AssistantFloatingButtonState extends State<AssistantFloatingButton> {
  bool showChatBox = false;
  final TextEditingController _controller = TextEditingController();

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
                        radius: 24,
                        backgroundColor: Colors.transparent,
                        child: Text(
                          '🤖',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "Hi! What can I help you with?",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
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
          child: GestureDetector(
            onTap: () => setState(() => showChatBox = !showChatBox),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: const Text(
                '🤖',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
