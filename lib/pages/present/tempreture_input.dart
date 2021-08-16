import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/widgets/primary_button.dart';

class TempretureCheckPage extends StatefulWidget {
  TempretureCheckPage({Key key}) : super(key: key);

  @override
  _TempretureCheckPageState createState() => _TempretureCheckPageState();
}

class _TempretureCheckPageState extends State<TempretureCheckPage> {
  List<bool> _list = [true, false];

  TextEditingController mobilenoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kBlue,
          toolbarHeight: 100, // default is 56
          toolbarOpacity: 0.5,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.060,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Text('Covid-19 Test',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize:
                                  20 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
          shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(90.0),
                bottomRight: Radius.circular(90.0)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.070,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text('Tik in Temperature',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kBlue),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    _list[0] = !_list[0];
                    _list[1] = false;
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.kBlue,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.075,
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextField(
                                controller: mobilenoController,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    height: 1.5,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Temp',
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                ], // Only numbers can be entered
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Stack(children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 45, 0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                  _list[0] = true;
                                  _list[1] = false;
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.060,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                    color: _list[0]
                                        ? AppColors.kBlue
                                        : Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Center(
                                    child: Text('C',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _list[1] = true;
                                    _list[0] = false;
                                  });
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.060,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                    color: _list[1]
                                        ? AppColors.kBlue
                                        : Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.5,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Center(
                                    child: Text('F',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              InkWell(
                  onTap: () {},
                  child: PrimaryButton(
                    text: "Done",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
