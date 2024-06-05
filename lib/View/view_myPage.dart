import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageViewState();
}

class MyPageViewState extends State<MyPageView> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('개발자에게 문의하기'),
            subtitle: Text('오픈 카카오톡 방 입장하기'),
            onTap: () => _launchURL('https://open.kakao.com/your_chat_room_url'),
          ),
          ListTile(
            title: Text('알림 설정'),
            subtitle: Text('알림 설정으로 이동'),
            onTap: () {
              // 알림 설정 페이지로 이동
            },
          ),
          ListTile(
            title: Text('테마 설정'),
            subtitle: Text('시스템 설정, light, dark 모드'),
            onTap: () {
              // 테마 설정 페이지로 이동
            },
          ),
          ListTile(
            title: Text('한자 시험 일정'),
            subtitle: Text('인터넷 브라우저로 url 띄우기'),
            onTap: () => _launchURL('https://www.hanja.re.kr'),
          ),
          ListTile(
            title: Text('광고 제거'),
            subtitle: Text('결제 청구'),
            onTap: () {
              // 광고 제거 결제 기능
            },
          ),
          ListTile(
            title: Text('앱 정보'),
            subtitle: Text('텍스트로 연재 버전 표시'),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Your App Name',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2024 Your Company',
              );
            },
          ),
          ListTile(
            title: Text('로그아웃'),
            subtitle: Text('firebase 로그아웃 기능'),
            onTap: () async {
              //await _auth.signOut();
              // 로그아웃 후 페이지 이동
            },
          ),
          ListTile(
            title: Text('회원탈퇴'),
            subtitle: Text('탈퇴기능'),
            onTap: () {
              // 회원 탈퇴 기능
            },
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
