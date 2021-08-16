import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/models/covid.dart';
import 'package:my_encore/pages/present/tempreture_input.dart';
import 'package:my_encore/widgets/custonmAppbar.dart';
import 'package:my_encore/widgets/primary_button.dart';

class CovidCheckPage extends StatefulWidget {
  CovidCheckPage({Key key}) : super(key: key);

  @override
  _CovidCheckPageState createState() => _CovidCheckPageState();
}

class _CovidCheckPageState extends State<CovidCheckPage> {
  int _selectedIndex;
  List<bool> _list = [true, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Home",
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
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
                      return ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                              child: Text(
                                                  snapshot.data[index].name,
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                              child: Stack(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 45, 0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _list[0] = true;
                                                        _list[1] = false;
                                                        _onSelected(index);
                                                      });
                                                    },
                                                    child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.060,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.14,
                                                      decoration: BoxDecoration(
                                                        color: _list[0]
                                                            ? AppColors.kBlue
                                                            : Colors.white,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    12)),
                                                      ),
                                                      child: Center(
                                                        child: Text('Ja',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          45, 0, 0, 0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _list[1] = true;
                                                        _list[0] = false;
                                                        _onSelected(index);
                                                      });
                                                    },
                                                    child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.060,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.14,
                                                      decoration: BoxDecoration(
                                                        color: _list[1]
                                                            ? AppColors.kBlue
                                                            : Colors.white,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    12)),
                                                      ),
                                                      child: Center(
                                                        child: Text('Nee',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              textStyle: TextStyle(
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ]),
                                            ),
                                          ]),
                                    ]),
                              ),
                            );
                          });
                    }
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              PrimaryButton(
                text: "Stuur",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TempretureCheckPage()),
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  Future<String> _loadRecentActivity() async {
    return await rootBundle.loadString('assets/covid.json');
  }

  Future<List<Covid>> _getNames() async {
    String jsonString = await _loadRecentActivity();
    final jsonResponse = json.decode(jsonString);
    List<Covid> recentusers = [];
    for (var u in jsonResponse) {
      Covid user = Covid(u["name"]);
      recentusers.add(user);
    }

    print(recentusers.length);

    return recentusers;
  }
}
