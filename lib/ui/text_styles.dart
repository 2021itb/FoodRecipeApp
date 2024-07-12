// import 'dart:ui';
//
// abstract class TextStyles {
//   static TextStyle tittleTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 50,
//     fontWeight: FontWeight.bold,
//     height: 75 / 50,
//     letterSpacing: 0,
//   );
//
//   static TextStyle headerTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 30,
//     fontWeight: FontWeight.bold,
//     height: 45 / 30,
//     letterSpacing: 0,
//   );
//
//   static TextStyle largeTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 20,
//     fontWeight: FontWeight.bold,
//     height: 30 / 20,
//     letterSpacing: 0,
//   );
//
//   static TextStyle mediumTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 18,
//     fontWeight: FontWeight.bold,
//     height: 27 / 18,
//     letterSpacing: 0,
//   );
//
//   static TextStyle normalTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 16,
//     fontWeight: FontWeight.bold,
//     height: 24 / 16,
//     letterSpacing: 0,
//   );
//
//   static TextStyle smallTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 14,
//     fontWeight: FontWeight.bold,
//     height: 21 / 14,
//     letterSpacing: 0,
//   );
//
//   static TextStyle smallerTextBold = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 11,
//     fontWeight: FontWeight.bold,
//     height: 17 / 11,
//     letterSpacing: 0,
//   );
//
//   static TextStyle tittleTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 50,
//     fontWeight: FontWeight.normal,
//     height: 75 / 50,
//     letterSpacing: 0,
//   );
//
//   static TextStyle headerTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 30,
//     fontWeight: FontWeight.normal,
//     height: 45 / 30,
//     letterSpacing: 0,
//   );
//
//   static TextStyle largeTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 20,
//     fontWeight: FontWeight.normal,
//     height: 30 / 20,
//     letterSpacing: 0,
//   );
//
//   static TextStyle mediumTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 18,
//     fontWeight: FontWeight.normal,
//     height: 27 / 18,
//     letterSpacing: 0,
//   );
//
//   static TextStyle normalTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 16,
//     fontWeight: FontWeight.normal,
//     height: 24 / 16,
//     letterSpacing: 0,
//   );
//
//   static TextStyle smallTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 14,
//     fontWeight: FontWeight.normal,
//     height: 21 / 14,
//     letterSpacing: 0,
//   );
//
//   static TextStyle smallerTextRegular = TextStyle(
//     fontFamily: 'Poppins',
//     fontSize: 11,
//     fontWeight: FontWeight.normal,
//     height: 17 / 11,
//     letterSpacing: 0,
//   );
// }
import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart' show TextStyle;
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static TextStyle _baseStyle(
      double fontSize, FontWeight fontWeight, double height) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: 0,
    );
  }

  static TextStyle tittleTextBold = _baseStyle(50, FontWeight.bold, 75 / 50);
  static TextStyle headerTextBold = _baseStyle(30, FontWeight.bold, 45 / 30);
  static TextStyle largeTextBold = _baseStyle(20, FontWeight.bold, 30 / 20);
  static TextStyle mediumTextBold = _baseStyle(18, FontWeight.bold, 27 / 18);
  static TextStyle normalTextBold = _baseStyle(16, FontWeight.bold, 24 / 16);
  static TextStyle smallTextBold = _baseStyle(14, FontWeight.bold, 21 / 14);
  static TextStyle smallerTextBold = _baseStyle(11, FontWeight.bold, 17 / 11);

  static TextStyle tittleTextRegular =
      _baseStyle(50, FontWeight.normal, 75 / 50);
  static TextStyle headerTextRegular =
      _baseStyle(30, FontWeight.normal, 45 / 30);
  static TextStyle largeTextRegular =
      _baseStyle(20, FontWeight.normal, 30 / 20);
  static TextStyle mediumTextRegular =
      _baseStyle(18, FontWeight.normal, 27 / 18);
  static TextStyle normalTextRegular =
      _baseStyle(16, FontWeight.normal, 24 / 16);
  static TextStyle smallTextRegular =
      _baseStyle(14, FontWeight.normal, 21 / 14);
  static TextStyle smallerTextRegular =
      _baseStyle(11, FontWeight.normal, 17 / 11);

  static TextStyle tittleTextSemiBold =
      _baseStyle(50, FontWeight.w500, 75 / 50);
  static TextStyle headerTextSemiBold =
      _baseStyle(30, FontWeight.w500, 45 / 30);
  static TextStyle largeTextSemiBold = _baseStyle(20, FontWeight.w500, 30 / 20);
  static TextStyle mediumTextSemiBold =
      _baseStyle(18, FontWeight.w500, 27 / 18);
  static TextStyle normalTextSemiBold =
      _baseStyle(16, FontWeight.w500, 24 / 16);
  static TextStyle smallTextSemiBold = _baseStyle(14, FontWeight.w500, 21 / 14);
  static TextStyle smallerTextSemiBold =
      _baseStyle(11, FontWeight.w500, 17 / 11);
}
