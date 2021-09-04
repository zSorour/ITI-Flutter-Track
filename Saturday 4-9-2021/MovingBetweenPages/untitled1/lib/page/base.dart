import 'package:flutter/material.dart';
import 'package:untitled1/page/pageTab1.dart';
import 'package:untitled1/page/pageTab2.dart';
import 'package:untitled1/page/pageTab3.dart';

import 'SecondPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              children: [
                Container(
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    currentAccountPicture: Image.asset('assets/img/user.png'),
                    accountName: Text(
                      'Ahmad Sorour',
                      style: TextStyle(fontSize: 20),
                    ),
                    accountEmail: Text('ahmad_sorour@outlook.com'),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      title: Text(
                        'My Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Collections',
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Numbers',
                icon: Icon(Icons.format_list_numbered),
              ),
              Tab(
                text: 'Messages',
                icon: Icon(Icons.person),
              ),
              Tab(
                text: 'Images',
                icon: Icon(Icons.image),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white,
              child: Container(
                color: Colors.black,
                child: ListView(
                  children: [
                    for (int i = 0; i < l.length; i++)
                      Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(30),
                        margin: const EdgeInsets.only(top: 15),
                        child: ListTile(
                          title: Text(
                            l[i],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SecondPage()));
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
            page2(),
            page3(),
          ],
        ),
      ),
    );
  }
}
