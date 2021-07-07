import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "container tutorial",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Tutorial'),
        centerTitle: true,
      ),
      body: CustomContainer(),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        margin: EdgeInsets.fromLTRB(40, 40, 0, 0),
        padding: EdgeInsets.all(20),
        child: Text(
          'hello',
          textAlign: TextAlign.center,
          style: TextStyle(
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
