import 'package:flutter/material.dart';
import 'package:indexed_stack_tutorial/first_page.dart';
import 'package:indexed_stack_tutorial/second_page.dart';
import 'package:indexed_stack_tutorial/test.page.dart';
import 'package:indexed_stack_tutorial/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'indexed stack tutorial',
      home: CustomNavigationBarDemo(),
    );
  }
}

class CustomNavigationBarDemo extends StatefulWidget {
  const CustomNavigationBarDemo({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarDemoState createState() =>
      _CustomNavigationBarDemoState();
}

class _CustomNavigationBarDemoState extends State<CustomNavigationBarDemo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink[300],
        title: const Text('Flutter Indexed Stack Demo'),
      ),
      body: Padding(
        child: Column(
          children: <Widget>[
            _stackedContainers(),
            _navigationButtons(),
          ],
        ),
        padding: const EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: const <Widget>[
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          child: const Text(
            'Flutter',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        ElevatedButton(
          child: const Text(
            'Aeologic',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        ElevatedButton(
          child: const Text(
            'Flutter Devs',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }
}
