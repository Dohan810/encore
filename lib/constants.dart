import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
