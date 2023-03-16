import 'package:flutter/material.dart';
import 'package:span/custom_text_controller.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController controller = TagTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text field'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.buildTextSpan(context: context, withComposing: true);
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              cursorHeight: 20,
              clipBehavior: Clip.none,
              controller: controller,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 5)),
            ),
          ],
        ),
      ),
    );
  }
}
