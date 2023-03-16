import 'package:flutter/material.dart';

class TextPainterScreen extends StatefulWidget {
  const TextPainterScreen({super.key});

  @override
  State<TextPainterScreen> createState() => _TextPainterScreenState();
}

class _TextPainterScreenState extends State<TextPainterScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Painter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: controller,
              builder: (context, value, child) {
                final span =
                    TextSpan(text: value.text, style: TextStyle(fontSize: 24));

                final tp = TextPainter(
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  text: span,
                );

                tp.layout(maxWidth: 300);
                final size = tp.size;
                return Text(
                    'width: ${size.width}, height: ${size.height}, exceed: ${tp.didExceedMaxLines}');
              },
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: controller,
            )
          ],
        ),
      ),
    );
  }
}
