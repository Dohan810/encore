import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';

class button extends StatefulWidget {
  final String title;
  button({@required this.title});

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.070,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.kBlue, //                   <--- border color
              width: 2.0,
            ),
            color: AppColors.kBlue),
        child: Center(
          child: Text(widget.title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 15 * MediaQuery.textScaleFactorOf(context),
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }
}
