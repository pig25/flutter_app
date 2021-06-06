
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dialog/dialog_screen.dart';
import 'package:flutter_app/home/home_screen.dart';

class Menu_Screen extends StatefulWidget{
  @override
  _Menu_Screen_State createState() => _Menu_Screen_State();

}
class _Menu_Screen_State extends State<Menu_Screen>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_BottomNavigationBarItem.elementAt(_currentIndex).label.toString()),
        ) ,
        body: _widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar:
        BottomNavigationBar(

          items:  _BottomNavigationBarItem,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.black,
          // selectedIconTheme: IconThemeData(color: Colors.blueAccent[100],opacity: 1,size: 20),
          onTap: (index) => {
            setState(() {
              _currentIndex = index;
            })
          },
        ),


    );
  }

}
var _widgetOptions = [
  Home_Screen(),
  Dialog_Screen(),
  Home_Screen(),
  Home_Screen(),
  Home_Screen(),
  Dialog_Screen(),
  Home_Screen(),
  Home_Screen(),
  Home_Screen(),
  Dialog_Screen(),
  Home_Screen(),
  Home_Screen(),
];
List<BottomNavigationBarItem> _BottomNavigationBarItem = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '首頁',
        backgroundColor: Colors.red,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message_rounded),
        label: '彈跳視窗',
        backgroundColor: Colors.green,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
        backgroundColor: Colors.purple,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
        backgroundColor: Colors.pink,
      ),
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: '首頁',
    backgroundColor: Colors.red,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.message_rounded),
    label: '彈跳視窗',
    backgroundColor: Colors.green,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.school),
    label: 'School',
    backgroundColor: Colors.purple,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
    backgroundColor: Colors.pink,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: '首頁',
    backgroundColor: Colors.red,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.message_rounded),
    label: '彈跳視窗',
    backgroundColor: Colors.green,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.school),
    label: 'School',
    backgroundColor: Colors.purple,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
    backgroundColor: Colors.pink,
  ),
];



