import 'package:flutter/material.dart';

class BuildTextSpan extends StatelessWidget {
  const BuildTextSpan({super.key});

  final String input = '''## 스크린샷
![merge_from_ofoct (5)](https://user-images.githubusercontent.com/104818361/202947393-88735c05-2138-4ea8-aae6-98d5662ffc53.jpg)''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('build TextSpan'),
      ),
      body: Center(
        child: Text.rich(TextSpan(children: _buildSpans(input))),
      ),
    );
  }

  List<InlineSpan> _buildSpans(String text) {
    final hashTagLastCurRegex = RegExp(r'Flutter', caseSensitive: false);
    final matches = hashTagLastCurRegex.allMatches(text);

    List<InlineSpan> spans = [];

    if (matches.isEmpty) {
      return spans..add(TextSpan(text: text));
    }

    int cursor = 0;

    for (final match in matches) {
      spans.add(TextSpan(text: text.substring(cursor, match.start)));
      spans.add(TextSpan(
          text: text.substring(match.start, match.end),
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
          )));
      cursor = match.end;
    }

    return spans..add(TextSpan(text: text.substring(cursor)));

    return spans;
  }
}
