import 'package:flutter/material.dart';
import 'package:flutter_hello_world/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Hello World text should be visible', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Hello, Flutter!'), findsOneWidget);
  });
}
