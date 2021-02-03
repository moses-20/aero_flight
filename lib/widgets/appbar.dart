import 'package:flutter/material.dart';

class AeroAppBar extends StatelessWidget {
  final double height;

  const AeroAppBar({Key key, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, const Color(0xFFE64C85)],
            ),
          ),
          height: height,
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Aero Flight',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Cookie',
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
