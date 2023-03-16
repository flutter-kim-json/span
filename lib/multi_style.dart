import 'package:flutter/material.dart';

class MultiStyle extends StatelessWidget {
  const MultiStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('build TextSpan'),
      ),
      body: Center(
        child: Text.rich(
          _buildTextSpan(),
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  TextSpan _buildTextSpan() {
    const myString = '모두의챌린지는플러터로만들어졌습니다.';
    final spans = <TextSpan>[];
    spans.add(_boldBlue(myString.substring(0, 4)));
    spans.add(_boldBlueYellowBg(myString.substring(4, 8)));
    spans.add(_yellowBg(myString.substring(8, 15)));
    spans.add(_redYellowBg(myString.substring(15, 17)));
    spans.add(_red(myString.substring(17)));
    return TextSpan(children: spans);
  }

  TextSpan _boldBlue(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  TextSpan _boldBlueYellowBg(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.yellow,
      ),
    );
  }

  TextSpan _yellowBg(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        backgroundColor: Colors.yellow,
      ),
    );
  }

  TextSpan _redYellowBg(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        color: Colors.red,
        backgroundColor: Colors.yellow,
      ),
    );
  }

  TextSpan _red(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        color: Colors.red,
      ),
    );
  }
}
