import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanScreen extends StatelessWidget {
  const TextSpanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextSpan'),
      ),
      body: Center(
        child: Text.rich(TextSpan(
            text:
                'As soon as Shams Zakhour started working as a Dart writer at Google in December 2013, she started advocating for a Dart mascot. ',
            // style: const TextStyle(fontSize: 24, color: Colors.blueAccent),
            children: [
              const TextSpan(
                  text:
                      'After documenting Java for 14 years, she had observed how beloved the Java mascot, Duke, had become, and she wanted something similar for Dart. But the idea didn’t gain momentum until 2017, when one of the Flutter engineers, Nina Chen, suggested it on an internal mailing list. ',
                  style: TextStyle(color: Colors.greenAccent)),
              const TextSpan(
                  text:
                      ' The Flutter VP at the time, Joshy Joseph, approved the idea and asked the organizer for the 2018 Dart Conference, Linda Rasmussen, to make it happen. Once Shams heard about these plans, she rushed to Linda and asked to own and drive the project to produce the plushies for the conference. Linda had already elicited some design sketches, which she handed off. Starting with the sketches, Shams located a vendor who could work within an aggressive deadline (competing with Lunar New Year), and started the process of creating the specs for the plushy. That’s right, Dash was originally a Dart mascot, not a Flutter mascot.',
                  style: TextStyle(color: Colors.redAccent)),
              TextSpan(
                  text: '메시지를 클릭해보세요.',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                            height: 300, child: Text('텍스트 스팬을 클릭합니다!')),
                      );
                    },
                  style: const TextStyle(color: Colors.amberAccent)),
            ])),
      ),
    );
  }
}
