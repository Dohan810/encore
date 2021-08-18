import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';
import 'package:my_encore/widgets/primary_button.dart';

class NewsDetails extends StatefulWidget {
  NewsDetails({Key key}) : super(key: key);

  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  void initState() {}

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.050,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.080,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.blue, //                   <--- border color
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text('General News',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.kBlue),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.060,
                                width: MediaQuery.of(context).size.width * 0.13,
                                decoration: BoxDecoration(
                                  //color: AppColors.kBlue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7)),
                                ),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: AppColors.kBlue,
                                )
                                // Image(image: new AssetImage(
                                //     'assets/images/search.png'),
                                // ),

                                ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Advertensies',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize:
                                  20 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.070,
                          width: MediaQuery.of(context).size.width * 0.11,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)),
                          ),
                          child: Image(
                            image: new AssetImage('assets/news.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Text('How to do it?',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15 *
                                      MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.080,
                          width: MediaQuery.of(context).size.width * 0.30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors
                                    .kOrange, //                   <--- border color
                                width: 2.0,
                              ),
                              color: AppColors.kOrange),
                          child: Center(
                            child: Text('See Here',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15 *
                                          MediaQuery.textScaleFactorOf(context),
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              SingleChildScrollView(
                child: Stack(
                  children: [
                    ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            // width: MediaQuery.of(context).size.width*0.80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Image(
                                            image: AssetImage('assets/1.png'),
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 0, 0, 0),
                                          child: Text('This is Test Article',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                        ),
                                      ]),
                                ]),
                          );
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: PrimaryButton(
                      text: "Add Articles",
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
