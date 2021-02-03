import 'package:flutter/material.dart';
import 'widgets/appbar.dart';
import 'widgets/rounded_buttons.dart';
import 'widgets/card_content.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Search',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AeroAppBar(height: 210.0),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 40.0),
              child: Column(
                children: <Widget>[
                  _buildButtons(),
                  Expanded(child: CardContent()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          RoundedButton(text: 'ONE WAY'),
          RoundedButton(text: 'ROUND'),
          RoundedButton(text: 'MULTICITY', active: true),
        ],
      ),
    );
  }
}
