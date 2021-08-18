import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';
import '../widgets/appbar.dart';

class loginScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.40,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/encore.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => appbarScreen()),
                // );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0750,
                width: MediaQuery.of(context).size.width * 0.80,
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.050,
                          width: MediaQuery.of(context).size.width * 0.10,
                          decoration: BoxDecoration(
                            color: AppColors.kRed,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                          ),
                          child: Image(
                            image: new AssetImage('assets/images/g.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Text('Login With Google',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15 *
                                      MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.70,
              child: Center(
                child: Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 12 * MediaQuery.textScaleFactorOf(context),
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.24,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                color: AppColors.kGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Stay home. Stay safe. Stay informed:',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize:
                                  13 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )),
                  ),
                  Center(
                    child: Text('www.sacoronavirus.co.za',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize:
                                  13 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
