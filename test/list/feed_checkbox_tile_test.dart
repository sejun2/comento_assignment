import 'package:comento_assignment/pages/list/widgets/feed_checkbox_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('FeedCheckboxTile test', (widgetTester) async {
    final targetWidget = MaterialApp(
      home: Scaffold(body: FeedCheckboxTile(isChecked: true, title: '타이틀', onChanged: (value){
        print(value);
      })),
    ) ;

    await widgetTester.pumpWidget(targetWidget);

    expect(find.text('타이틀'), findsOneWidget);
    expect(find.byType(Checkbox), findsOneWidget);
    expect(find.byKey(const Key('FeedCheckboxTile_GestureDetector')), findsOneWidget);

    bool? isChecked = widgetTester.widget<Checkbox>(find.byType(Checkbox)).value;
    expect(isChecked, true);


    await widgetTester.tap(find.byKey(const Key('FeedCheckboxTile_GestureDetector')));
    await widgetTester.pump();

    isChecked = widgetTester.widget<Checkbox>(find.byType(Checkbox)).value;
    expect(isChecked, false);

    await widgetTester.tap(find.byKey(const Key('FeedCheckboxTile_GestureDetector')));
    await widgetTester.pump();

    isChecked = widgetTester.widget<Checkbox>(find.byType(Checkbox)).value;
    expect(isChecked, true);
  });
}