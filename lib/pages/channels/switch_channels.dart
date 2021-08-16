import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/models/names.dart';

class SwitchChannels extends StatefulWidget {
  SwitchChannels({Key key}) : super(key: key);

  @override
  _SwitchChannelsState createState() => _SwitchChannelsState();
}

class _SwitchChannelsState extends State<SwitchChannels> {
  int _selectedIndex;

  List a = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kBlue,
          centerTitle: true,
          title: Text('Channels',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20 * MediaQuery.textScaleFactorOf(context),
                  fontWeight: FontWeight.w500,
                ),
              )),
          shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(90.0),
                bottomRight: Radius.circular(90.0)),
          ),
          leading: IconButton(
            icon: (Icon(
              Icons.info,
            )),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.power_settings_new),
              onPressed: () {},
            )
          ],
        ),
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
                          padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                          child: Text('Search Channels',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.kBlue),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.060,
                                width: MediaQuery.of(context).size.width * 0.13,
                                decoration: BoxDecoration(
                                  color: AppColors.kBlue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      topRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7),
                                      bottomRight: Radius.circular(7)),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              FutureBuilder(
                  future: _getNames(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                      return Container(
                        child: Center(
                          child: Text('Loading'),
                        ),
                      );
                    } else {
                      return SingleChildScrollView(
                        child: ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  // width: MediaQuery.of(context).size.width*0.80,
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
                                          offset: Offset(0,
                                              1), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                image: AssetImage(a[index]),
                                                height: 40,
                                                width: 40,
                                              ),
                                              Text(snapshot.data[index].name,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )),
                                              Image(
                                                image:
                                                    AssetImage('assets/qr.png'),
                                                height: 25,
                                                width: 25,
                                              ),
                                            ]),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _onSelected(index);
                                            });
                                            _showDialog();
                                          },
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.050,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.70,
                                            decoration: BoxDecoration(
                                              color: _selectedIndex != null &&
                                                      _selectedIndex == index
                                                  ? AppColors.kBlue
                                                  : AppColors.kOrange,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12),
                                                  topRight: Radius.circular(12),
                                                  bottomLeft:
                                                      Radius.circular(12),
                                                  bottomRight:
                                                      Radius.circular(12)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                  snapshot.data[index].btn,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )),
                                            ),
                                          ),
                                        )
                                      ]),
                                ),
                              );
                            }),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _loadRecentActivity() async {
    return await rootBundle.loadString('assets/data.json');
  }

  Future<List<Data>> _getNames() async {
    String jsonString = await _loadRecentActivity();
    final jsonResponse = json.decode(jsonString);
    List<Data> recentusers = [];
    for (var u in jsonResponse) {
      Data user = Data(u["name"], u["btn"]);
      recentusers.add(user);
    }

    print(recentusers.length);

    return recentusers;
  }

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
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
