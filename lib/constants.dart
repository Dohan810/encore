import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin AppColors {
  static const MaterialColor kSwatch = Colors.green;
  static const Color kRed = Color.fromRGBO(241, 67, 54, 1.0);
  static const Color kGreenT = Color.fromRGBO(52, 168, 83, 0.8);
  static const Color kGrey = Color.fromRGBO(242, 242, 242, 1.0);
  static const Color kBlue = Color.fromRGBO(50, 121, 182, 1.0);
  static const Color kOrange = Color.fromRGBO(238, 173, 77, 1.0);
  static const Color kPink = Color.fromRGBO(255, 222, 224, 1.0);
  static const Color kGreen = Color.fromRGBO(92, 183, 92, 1.0);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    String _hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (_hexColor.length == 6) {
      _hexColor = "FF$_hexColor";
    }
    return int.parse(_hexColor, radix: 16);
  }
}

const ksmallText = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 13,
  color: const Color(0xffffffff),
  fontWeight: FontWeight.w500,
);

const kAppBarBoxDecorations = BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(26.0),
    bottomLeft: Radius.circular(26.0),
  ),
  // color: Color(0xff3279b6),
  gradient: LinearGradient(
    begin: Alignment(-0.56, -0.54),
    end: Alignment(1.75, 2.87),
    colors: [const Color(0xff3279b6), const Color(0xff005ba7)],
    stops: [0.0, 1.0],
  ),
  boxShadow: [
    BoxShadow(
      color: const Color(0x60000000),
      offset: Offset(5.0, 8.0), //(x,y)
      blurRadius: 6.0,
    ),
  ],
);

const kBoxDecorations = BoxDecoration(
  color: const Color(0xffffdee0),
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
  boxShadow: [
    BoxShadow(
      color: const Color(0xFF808080),
      offset: Offset(5.0, 8.0), //(x,y)
      blurRadius: 6.0,
    ),
  ],
);
