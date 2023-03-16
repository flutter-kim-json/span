import 'package:flutter/material.dart';

class BuildTextSpan extends StatelessWidget {
  const BuildTextSpan({super.key});

  final String input =
      '''Flutter apps are written in the Dart language and make use of many of the language's more advanced features.[17]

While writing and debugging an application, Flutter runs in the Dart virtual machine, which features a just-in-time execution engine. This allows for fast compilation times as well as "hot reload", with which modifications to source files can be injected into a running application. Flutter extends this further with support for stateful hot reload, where in most cases changes to source code are reflected immediately in the running app without requiring a restart or any loss of state.[18]

For better performance, release versions of Flutter apps on all platforms use ahead-of-time (AOT) compilation,[19] except for on the Web where code is transpiled to JavaScript.[20]

Flutter inherits Dart's Pub package manager and software repository, which allows users to publish and use custom packages as well as Flutter-specific plugins.[21]''';

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
