import 'package:flutter/material.dart';
import 'package:tu_comida/pages/Places.dart';
import 'package:tu_comida/pages/Home.dart';
import 'package:tu_comida/pages/Splash.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_){
      runApp( new MyApp());
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(//systemNavigationBarDividerColor: Colors.blue,
        statusBarColor: Colors.black,//statusBarIconBrightness: Brightness.light,statusBarBrightness: Brightness.light
        )); 
    });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuba Delivery',
      debugShowCheckedModeBanner: false,
      
      home: App(),
    );
  }
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.green,
       // primaryColor: Colors.red,
        brightness: Brightness.light,   
      ),
      /* TODO Dark Theme Implementation 
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
        */
      home: Home(),
      //SplashScreen()
    );
  }
}





