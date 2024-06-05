
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learnchina/Util/util_grade.dart';
import 'package:learnchina/View/view_home.dart';
import 'package:learnchina/View/view_learning.dart';
import 'package:provider/provider.dart';

import '../ViewModel/vm_learning.dart';

class MainView_dt extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainView_dtState();
}

class MainView_dtState extends State<MainView_dt> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SettingsPage(),
    SettingsPage(),
    ContactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ),
            ExpansionTile(
              leading: Icon(Icons.school),
              title: Text('학습하기'),
              children: <Widget>[
                studyListItem(0),
                studyListItem(1),
                studyListItem(2),
                studyListItem(3),
              ],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
    );
  }

  Widget studyListItem(int index){
    return ListTile(
      title: Text('${getGradeName(eGrade.values[index])} 공부하기'),
      onTap: () {
        Navigator.pop(context);
        // Update the state to reflect the new selected page
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeNotifierProvider(
          create: (context) => LearningViewModel(index), // gradeIndex를 5로 초기화
          child: LearningView(),
        )));
      },
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Center(
        child: Text("Contact Page"),
      ),
    );
  }
}