import 'package:alchemist/alchemist.dart';
import 'package:alchemist_zone_test/main.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FancyWidgetTest', () {
    goldenTest(
      'FancyWidgetTest',
      fileName: 'fancy_widget_test',
      whilePerforming: (WidgetTester tester) async {
        await withClock(
          Clock.fixed(DateTime(2022)),
          () async => tester.pumpAndSettle(),
        );
        return Future.value();
      },
      pumpWidget: (tester, widget) async {
        await withClock(
          Clock.fixed(DateTime(2022)),
          () async => tester.pumpWidget(widget),
        );
      },
      builder: () => GoldenTestScenario(
        name: 'Clock shows 2022',
        constraints: const BoxConstraints(
          maxHeight: 100,
          minHeight: 100,
          maxWidth: 100,
          minWidth: 100,
        ),
        child: const App(),
      ),
    );
  });
}
