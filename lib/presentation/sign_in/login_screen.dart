import 'package:flutter/material.dart';
import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';
import '../component/labeled_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyles.headerTextBold,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyles.largeTextRegular.copyWith(
                    color: Color(0xFF121212),
                  ),
                ),
                SizedBox(height: 57),
                LabeledTextField(
                  key: Key('emailField'), // Key 추가
                  label: 'Email',
                  hintText: 'Enter your email',
                  controller: emailController,
                ),
                SizedBox(height: 30),
                LabeledTextField(
                  key: Key('passwordField'),
                  // Key 추가
                  label: 'Enter Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                  controller: passwordController,
                ),
                SizedBox(height: 20),
                Text(
                  'Forgot Password?',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.secondary100,
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    print('Email: ${emailController.text}');
                    print('Password: ${passwordController.text}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorStyles.primary100, // 배경색 설정
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // 모서리 둥글기 설정
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: ColorStyles.gray4, // 선의 색상 설정
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Or Sign in With',
                          style: TextStyles.smallerTextRegular.copyWith(
                            color: ColorStyles.gray4,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: ColorStyles.gray4, // 선의 색상 설정
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/google_button.png',
                      width: 64,
                      height: 64,
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      'assets/facebook_button.png',
                      width: 64,
                      height: 64,
                    ),
                  ],
                ),
                SizedBox(height: 55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to sign up screen or perform sign up action
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                  color: ColorStyles.secondary100,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // 나머지 UI 요소들 추가
              ],
            ),
          ),
        ),
      ),
    );
  }
}
