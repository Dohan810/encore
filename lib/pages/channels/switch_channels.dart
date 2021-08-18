import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';
import 'package:my_encore/models/names.dart';
import 'package:my_encore/widgets/appbar.dart';
import 'package:my_encore/widgets/input_bar.dart';

class SwitchChannels extends StatefulWidget {
  SwitchChannels({Key key}) : super(key: key);

  @override
  _SwitchChannelsState createState() => _SwitchChannelsState();
}

class _SwitchChannelsState extends State<SwitchChannels> {
  @override
  Widget build(BuildContext context) {
    List tempImages = [
      "assets/1.png",
      "assets/2.png",
      "assets/3.png",
      "assets/4.png",
      "assets/2.png",
      "assets/3.png",
      "assets/4.png",
    ];

    List<Widget> switchChannels() {
      List<Widget> temp = [];
      tempImages.forEach(
        (element) {
          temp.add(
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(element),
                            height: 40,
                            width: 40,
                          ),
                          Text(
                            "Garsfontein",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Image(
                            image: AssetImage('assets/qr.png'),
                            height: 25,
                            width: 25,
                          ),
                        ]),
                    InkWell(
                      onTap: () {
                        _showDialog();
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.050,
                        width: MediaQuery.of(context).size.width * 0.70,
                        decoration: BoxDecoration(
                          color: false ? AppColors.kBlue : AppColors.kOrange,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        child: Center(
                          child: Text(
                            "Go",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );

      return temp;
    }

    return CustomAppBar(
      title: "Switch",
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.050,
          ),
          CustomInputBar(
            title: "Search Channels",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Column(
            children: switchChannels(),
          )
        ],
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          child: IntrinsicWidth(
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                        child: Text('Use of Site',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20 *
                                      MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kBlue),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: AppColors.kBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize:
                                  12 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
