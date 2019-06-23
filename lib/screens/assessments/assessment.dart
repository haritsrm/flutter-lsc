import 'package:flutter/material.dart';
import 'assessment_body.dart';

class Assessment extends StatefulWidget {
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
  final List<int> colorCodes = <int>[800, 600, 500, 700, 600, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Assessment'),
        ),
      ),
      body: Column(
        children: <Widget>[
          AssessmentBody(),
        ]
      )
    );
  }

}