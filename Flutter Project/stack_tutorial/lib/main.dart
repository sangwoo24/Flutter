import 'package:flutter/material.dart';

void main() {
  runApp(TreatmentHomeView());
}

class TreatmentHomeView extends StatelessWidget {
  TreatmentHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Test',
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
