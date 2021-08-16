import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';

class PrimaryButton extends StatefulWidget {
  final ButtonStyle style;
  final String text;
  final Function onPress;

  PrimaryButton({this.style, this.text = "Go", this.onPress});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: widget.style != null
          ? widget.style
          : ElevatedButton.styleFrom(
              primary: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
      onPressed: widget.onPress != null
          ? widget.onPress
          : () {
              // Get.toNamed("/Home");
            },
      child: Text(widget.text),
    );
  }
}
