import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final bool active;
  final GestureTapCallback onTap;

  RoundedButton({this.text, this.active = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = active ? Colors.white : Colors.transparent;
    Color textColor = active ? Colors.red : Colors.white;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 36.0,
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
