import 'package:flutter/material.dart';
import 'package:tu_comida/pages/Settings.dart';

class LanguagesScreen extends StatefulWidget {
  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {

  bool x = false; 

  @override
  Widget build(BuildContext context) {
    return x ? Settings() : getLangScreen(context);
    
  }

  Widget getLangScreen(context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Languages'),
        leading: GestureDetector(
          onTap: () { 
            setState(() {
              x = true;
            });
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
              
           
        ),
      
    );
  }


}
