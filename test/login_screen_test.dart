import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_app/presentation/sign_in/login_screen.dart';

void main() {
  testWidgets('LoginScreen Widget Test', (WidgetTester tester) async {
    // Controller 생성
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    // LoginScreen을 Pump하여 렌더링
    await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );

    // 'Hello,' 텍스트가 화면에 있는지 확인
    expect(find.text('Hello,'), findsOneWidget);

    // 'Welcome Back!' 텍스트가 화면에 있는지 확인
    expect(find.text('Welcome Back!'), findsOneWidget);

    // Email TextField 입력 테스트
    await tester.enterText(find.byKey(const Key('EmailTextField')), 'test@example.com');
    expect(emailController.text, 'test@example.com');

    // Password TextField 입력 테스트
    await tester.enterText(find.byKey(const Key('PasswordTextField')), 'password123');
    expect(passwordController.text, 'password123');

    // Sign In 버튼 탭 테스트
    await tester.tap(find.text('Sign In'));
    await tester.pump();

    // 특정 동작 후의 화면 변화를 확인할 수 있는 코드 작성
    // 예: 로그인 성공 시 다음 화면으로 네비게이션되는지 확인 등
  });
}
