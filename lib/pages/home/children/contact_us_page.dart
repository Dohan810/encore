import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';
import 'package:my_encore/widgets/primary_button.dart';

class ContactUsPage extends StatefulWidget {
  ContactUsPage({Key key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.60,
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
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.070,
                              width: MediaQuery.of(context).size.width * 0.11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6)),
                              ),
                              child: Image(
                                image: new AssetImage('assets/1.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text('Test Name',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 20 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.kBlue),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Contact',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Text('Test contact',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('E-pops',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Text('Test E-pops',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Telephone',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Text('+12394356346',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Post Address',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Text(
                                'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, sed diam',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Address',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Text(
                                'Lorem ipsum dolor sit amet,consetetur sadipscing elitr, sed diam',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            InkWell(
              onTap: () {},
              child: PrimaryButton(
                text: "Update",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
