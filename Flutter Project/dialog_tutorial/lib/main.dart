import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Dialog Tutorial',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  child: Text('Default Dialog',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('hello'),
                            content: Text('this is body'),
                            actions: [
                              TextButton(
                                child: Text('button1'),
                                onPressed: () {},
                              )
                            ],
                          );
                        });
                  }),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Text(
                    'Custom Dialog',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog();
                        });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        height: 500,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            children: [
              Text(
                '정확한 결과를 위해\n 오전 10시 부터\n 오후 02시 까지\n 진단이 가능합니다😀',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '진단 가능까지 남은 시간\n 02:19',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
              ),
              MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'OK, 기다릴게요',
                    style: TextStyle(fontSize: 18),
                  ),
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog2();
                        });
                  },
                  child: Text(
                    '왜 이렇게 하나요? 🤔',
                    style: TextStyle(fontSize: 18),
                  ),
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog2 extends StatelessWidget {
  const CustomDialog2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        height: 500,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: Column(
            children: [
              Text(
                'New Dialog',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
              ),
              MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 18),
                  ),
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width),
            ],
          ),
        ),
      ),
    );
  }
}
