import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:testpatrol/main.dart';

void main() {
  patrolTest('', ($) async {
    await $.pumpWidgetAndSettle(const MyApp());
    for (var i = 0; i < 5; i++) {
      await $(#increment).tap();
    }
    expect($(#counter).text, '5');
  });
}
