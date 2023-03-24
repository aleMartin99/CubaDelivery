import 'package:flutter/material.dart';
import 'package:tu_comida/pages/Places.dart';
import 'package:tu_comida/pages/Search.dart';
import 'package:tu_comida/pages/Shop.dart';
import 'package:tu_comida/pages/Actions.dart';
import 'package:tu_comida/pages/Settings.dart';

class BottomNavBar extends StatefulWidget {
  final ValueChanged<int> changeCurrentTab;

  BottomNavBar({Key key, this.changeCurrentTab}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  int currentTab = 0;
  //Screen size;

  final tabPages = <Widget>[
    Center(child: Place()),
    Center(child: MyActions()),
    Center(child: Shop()),
    Center(child: Search()),
    Center(child: Settings()),
  ];
  final bottomBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Places'),
    BottomNavigationBarItem(icon: Icon(Icons.money_off), label: 'Actions'),
    BottomNavigationBarItem(
        // icon: IconButton(icon:Icon(Icons.shopping_basket),onPressed: ()=> Navigator.push(context,Shop('jaja')),), title: Text('Shop')),
        icon: Icon(Icons.shopping_basket),
        label: 'Shop'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    //size = Screen(MediaQuery.of(context).size);

    return Scaffold(
      body: tabPages[currentTab],
      bottomNavigationBar: bottomNB(),
    );
  }

  Widget bottomNB() {
    return BottomNavigationBar(
        items: bottomBarItems,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.black45,
        currentIndex: currentTab,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        });
  }
}
