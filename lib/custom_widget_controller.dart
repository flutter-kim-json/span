import 'package:flutter/material.dart';

class TagWidgetController extends TextEditingController {
  @override
  TextSpan buildTextSpan(
      {required BuildContext context,
      TextStyle? style,
      required bool withComposing}) {
    // print(value.composing);
    // print(value.selection);

    return TextSpan(
        children: _buildSpans(value.text),
        style: TextStyle(color: Colors.redAccent));
  }

  List<InlineSpan> _buildSpans(String text) {
    final hashTagLastCurRegex = RegExp(r'(\s*#+[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]+)\s');
    final matches = hashTagLastCurRegex.allMatches(text);

    List<InlineSpan> spans = [];

    if (matches.isEmpty) {
      return spans..add(TextSpan(text: text));
    }

    int cursor = 0;

    for (final match in matches) {
      spans.add(TextSpan(text: text.substring(cursor, match.start)));
      spans.add(WidgetSpan(
          child: TagWidget(tagText: text.substring(match.start, match.end))));
      cursor = match.end;
    }

    return spans..add(TextSpan(text: text.substring(cursor)));
  }
}

class TagWidget extends StatelessWidget {
  const TagWidget({required this.tagText, super.key});

  final String tagText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amberAccent),
      child: Text(tagText),
    );
  }
}
