import 'package:flutter/material.dart';
import 'package:span/custom_widget_controller.dart';

class TextFieldWidgetScreen extends StatefulWidget {
  const TextFieldWidgetScreen({super.key});

  @override
  State<TextFieldWidgetScreen> createState() => _TextFieldWidgetScreenState();
}

class _TextFieldWidgetScreenState extends State<TextFieldWidgetScreen> {
  final TextEditingController controller = TagWidgetController();
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
