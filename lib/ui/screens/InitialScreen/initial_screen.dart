import 'package:financial_app/ui/screens/HomeScreen/home_screen.dart';
import 'package:financial_app/ui/screens/SettingsScreen/settings_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  static String routeName = 'InitialScreen';
  final List<Widget> _screens = [
    HomeScreen(),
    SettingsScreen()
  ];

  @override
  State<StatefulWidget> createState() => _InitialScreenState();

}

class _InitialScreenState extends State<InitialScreen> {
  int _curretIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _curretIndex = index;
    });
    print(_curretIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget._screens[_curretIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _curretIndex,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      //     // BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard), label: 'finance'),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
      //   ],
      //   onTap: onTabTapped,
      // ),
    );
  }
}