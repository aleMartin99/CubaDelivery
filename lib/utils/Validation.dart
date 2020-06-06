/*import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';

  // Check Device Platform
  bool isAndroidPlatform(){
    if (Platform.isAndroid) {
      return true;
      // Android-specific code
    } else if (Platform.isIOS) {
      // iOS-specific code
      return false;
    } else {
      // Default Response (Not Android or iOS WTF!!!)
      return false;
    }
  }

  // Check Wifi or Mobile Connection
  Future<String> checkConnection() async {
    ConnectivityResult connectivityResult =
    await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile){
      // Mobile Data Connection
      return "mobile";
    } else if (connectivityResult == ConnectivityResult.wifi){
      // Wifi Connection
      return "wifi";
    } else {
      // Default Response (Not Wifi or Mobile Data WTF!!!)
      return "wtf";
    }
  }*/