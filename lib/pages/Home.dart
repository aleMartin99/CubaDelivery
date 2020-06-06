import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/BottomNavBar.dart';

class Home extends StatefulWidget {
  final ValueChanged<int> changeCurrentTab;

  Home({Key key, this.changeCurrentTab}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  bool productViewChecker;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavBar();
  }
}
