import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/pages/present/covid_check.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DateTime now = DateTime.now();

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors
                          .kPink, //                   <--- border color
                      width: 2.0,
                    ),
                    color: AppColors.kPink),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome Dohan Smit today is',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15 *
                                      MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.kRed),
                            )),
                        Text(
                            "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15 *
                                      MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.kRed),
                            )),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CovidCheckPage()),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.080,
                            width: MediaQuery.of(context).size.width * 0.30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColors
                                      .kRed, //                   <--- border color
                                  width: 2.0,
                                ),
                                color: AppColors.kRed),
                            child: Center(
                              child: Text('Covid Check',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 15 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              child: Divider(
                thickness: 3.0,
                color: AppColors.kGrey,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.080,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors
                          .kGreen, //                   <--- border color
                      width: 2.0,
                    ),
                    color: AppColors.kGreen),
                child: Center(
                  child: Text('Your Duty',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize:
                                15 * MediaQuery.textScaleFactorOf(context),
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.070,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  // bottomLeft: Radius.circular(12),
                  // bottomRight: Radius.circular(12)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                    child: Text('Use of site',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize:
                                  15 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.w600,
                              color: AppColors.kBlue),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: IconButton(
                        onPressed: () {
                          _settingModalBottomSheet(context);
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  todayDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedTime = DateFormat('kk:mm:a').format(now);
    String formattedDate = formatter.format(now);
    print(formattedTime);
    print(formattedDate);
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
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
                      height: MediaQuery.of(context).size.height * 0.013,
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
        });
  }
}
