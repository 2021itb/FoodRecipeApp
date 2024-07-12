import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_app/presentation/component/labeled_text_field.dart';

void main() {
  testWidgets('LabeledTextField Widget Test', (WidgetTester tester) async {
    // Controller 생성
    final TextEditingController controller = TextEditingController();

    // 테스트용 레이블과 힌트 텍스트
    const String label = 'Email';
    const String hintText = 'Enter your email';

    // LabeledTextField 위젯을 Pump하여 렌더링
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LabeledTextField(
            label: label,
            hintText: hintText,
            controller: controller,
          ),
        ),
      ),
    );

    // 레이블 텍스트가 화면에 있는지 확인
    expect(find.text(label), findsOneWidget);

    // 힌트 텍스트가 화면에 있는지 확인
    expect(find.text(hintText), findsOneWidget);

    // TextField 입력 테스트
    await tester.enterText(find.byType(TextField), 'test@example.com');
    expect(controller.text, 'test@example.com');
  });
}
