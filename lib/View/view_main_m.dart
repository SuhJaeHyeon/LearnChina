import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'view_myPage.dart';
import 'view_study.dart';
import 'view_studyManagement.dart';

class MainViewM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            label: '공부하기',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: '공부관리',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '마이페이지',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('공부하기'),
                ),
                child: StudyView(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('공부관리'),
                ),
                child: StudyManagementView(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('마이페이지'),
                ),
                child: MyPageView(),
              );
            });
          default:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('공부하기'),
                ),
                child: StudyView(),
              );
            });
        }
      },
    );
  }
}
