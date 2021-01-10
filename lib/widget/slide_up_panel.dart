import 'package:flutter/material.dart';

class SlideUpPanel extends StatefulWidget {
  SlideUpPanel({Key key}) : super(key: key);

  @override
  _SlideUpPanelState createState() => _SlideUpPanelState();
}

class _SlideUpPanelState extends State<SlideUpPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-60,
      height: 60,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Color(0xFFEEDC4E),
        borderRadius: BorderRadius.circular(50.0),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          
          
        ],
      ),
    );
  }
}
