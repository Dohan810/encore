import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/models/covid.dart';
import 'package:my_encore/pages/present/tempreture_input.dart';
import 'package:my_encore/widgets/appbar.dart';
import 'package:my_encore/widgets/primary_button.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CovidCheckPage extends StatefulWidget {
  CovidCheckPage({Key key}) : super(key: key);

  @override
  _CovidCheckPageState createState() => _CovidCheckPageState();
}

class _CovidCheckPageState extends State<CovidCheckPage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: "Covid Check",
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
                        height: MediaQuery.of(context).size.height * 0.12,
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    snapshot.data[index].name,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  ToggleSwitch(
                                    minWidth: 50.0,
                                    minHeight: 40.0,
                                    initialLabelIndex: 0,
                                    activeFgColor: Colors.white,
                                    inactiveBgColor: Colors.grey,
                                    inactiveFgColor: Colors.white,
                                    totalSwitches: 2,
                                    labels: ['No', 'Yes'],
                                    iconSize: 30.0,
                                    activeBgColors: [
                                      [Colors.black45, Colors.black26],
                                      [Colors.yellow, Colors.orange]
                                    ],
                                    animate:
                                        true, // with just animate set to true, default curve = Curves.easeIn
                                    curve: Curves
                                        .bounceInOut, // animate must be set to true when using custom curve
                                    onToggle: (index) {
                                      print('switched to: $index');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          PrimaryButton(
            text: "Stuur",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TempretureCheckPage()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
        ],
      ),
    );
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
