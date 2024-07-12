import 'package:flutter/material.dart';
import 'package:food_recipe_app/presentation/sign_in/login_screen.dart';

import 'component/labeled_text_field.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}
