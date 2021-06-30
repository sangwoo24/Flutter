import 'package:flutter/material.dart';

void main() => runApp(AppBarTutorial());

class AppBarTutorial extends StatelessWidget {
  const AppBarTutorial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Tutorial',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBar Tutorial'),
        elevation: 0,
        actions: [
          IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print("Shopping");
          }, 
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print("search");
          }, 
        ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('zzang goo'),
              accountEmail: Text('zzanggoo@naver.com'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/default.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hat.png'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[800],),
              trailing: Icon(Icons.add),
              title: Text('home'),
              onTap: () {
                print('home');
              },
            ),
                        ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[800],),
              trailing: Icon(Icons.add),
              title: Text('settings'),
              onTap: () {
                print('settings');
              },
            ),
                        ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[800],),
              trailing: Icon(Icons.add),
              title: Text('question'),
              onTap: () {
                print('question');
              },
            ),
          ],
        ),
      ),
    );
  }
}