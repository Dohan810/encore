import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/constants.dart';
import 'package:my_encore/pages/home/home_page.dart';
import 'package:my_encore/widgets/appbar.dart';
import 'package:my_encore/widgets/primary_button.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
    return CustomAppBar(
      title: "Covid-19",
      child: buildInput(),
    );
  }

  buildInput() {
    return Column(
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.075,
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: InkWell(
                        onTap: () {},
                        child: TextField(
                          controller: mobilenoController,
                          style: TextStyle(
                              fontSize: 18.0, height: 1.5, color: Colors.white),
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
                    ToggleSwitch(
                      minWidth: 50.0,
                      minHeight: 40.0,
                      initialLabelIndex: 0,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      totalSwitches: 2,
                      labels: ['C', 'F'],
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
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.020,
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: PrimaryButton(
              text: "Done",
            ),
          ),
        ),
      ],
    );
  }
}
