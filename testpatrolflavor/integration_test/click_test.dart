import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:testpatrolflavor/flavors.dart';
import 'package:testpatrolflavor/main.dart';

void main() {
  patrolTest('click test', nativeAutomation: true, ($) async {
    F.appFlavor = Flavor.dev;
    await $.pumpWidgetAndSettle(const MyApp());
    for (var i = 0; i < 5; i++) {
      await $(#increment).tap();
    }
    expect($(#counter).text, '5');
  });
}
