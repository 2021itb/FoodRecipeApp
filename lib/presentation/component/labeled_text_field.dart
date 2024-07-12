import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const LabeledTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyles.smallTextRegular,
        ),
        SizedBox(height: 8),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 55,
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: ColorStyles.gray4,
                    fontSize: 11,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: ColorStyles.gray4,
                    ), // 기본 아웃라인 색상
                  ),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(8),
                  //   borderSide: BorderSide(
                  //     color: ColorStyles.gray4,
                  //   ), // 기본 테두리 색상
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: ColorStyles.primary80,
                    ), // 포커스 시 테두리 색상
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
