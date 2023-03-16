import 'package:flutter/material.dart';
import 'package:span/build_text_span.dart';
import 'package:span/multi_style.dart';
import 'package:span/selectable_text.dart';
import 'package:span/selectable_widget.dart';
import 'package:span/text_field_screen.dart';
import 'package:span/text_field_widget_screen.dart';
import 'package:span/text_painter.dart';
import 'package:span/text_span.dart';
import 'package:span/widget_span.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: MultiStyle(),
      // home: TextSpanScreen(),
      // home: BuildTextSpan(),
      // home: SelectableTextScreen(),
      // home: TextFieldScreen(),
      // home: TextPainterScreen(),
      // home: WidgetSpanScreen(),
      // home: SelectableWidgetScreen(),
      home: TextFieldWidgetScreen(),
    );
  }
}
