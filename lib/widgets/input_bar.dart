import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';

class CustomInputBar extends StatefulWidget {
  final String title;
  CustomInputBar({this.title = ""});

  @override
  _CustomInputBarState createState() => _CustomInputBarState();
}

class _CustomInputBarState extends State<CustomInputBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.080,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Text(widget.title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 13 * MediaQuery.textScaleFactorOf(context),
                        fontWeight: FontWeight.w500,
                        color: AppColors.kBlue,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.060,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                      color: AppColors.kBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
