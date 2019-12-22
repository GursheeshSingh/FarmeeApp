import 'package:farme_app/constants.dart';
import 'package:farme_app/pages/CartPage.dart';
import 'package:farme_app/pages/ChatPage.dart';
import 'package:farme_app/pages/MainPage.dart';
import 'package:farme_app/pages/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MainFrame extends StatefulWidget {
  @override
  _MainFrameState createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    MainPage(),
    CartPage(),
    ChatPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Entypo.home, color: kGoodGrayColor2),
              activeIcon: Icon(Entypo.home, color: kGoodOrangeColor),
              title: Text('Main',
                  style: TextStyle(
                      color: _selectedIndex == 0
                          ? kGoodOrangeColor
                          : kGoodGrayColor2)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Foundation.shopping_cart, color: kGoodGrayColor2),
              activeIcon:
                  Icon(Foundation.shopping_cart, color: kGoodOrangeColor),
              title: Text('Cart',
                  style: TextStyle(
                      color: _selectedIndex == 1
                          ? kGoodOrangeColor
                          : kGoodGrayColor2)),
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.chat_processing,
                  color: kGoodGrayColor2),
              activeIcon: Icon(MaterialCommunityIcons.chat_processing,
                  color: kGoodOrangeColor),
              title: Text('Chat',
                  style: TextStyle(
                      color: _selectedIndex == 2
                          ? kGoodOrangeColor
                          : kGoodGrayColor2)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.md_settings, color: kGoodGrayColor2),
              activeIcon: Icon(Ionicons.md_settings, color: kGoodOrangeColor),
              title: Text('Setting',
                  style: TextStyle(
                      color: _selectedIndex == 3
                          ? kGoodOrangeColor
                          : kGoodGrayColor2)),
            ),
          ],
        ),
      ),
    );
  }
}
