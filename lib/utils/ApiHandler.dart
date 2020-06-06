/*import 'package:http/http.dart';

// Function that takes a Response and generates a String with the "Real Respose".
// TODO: Complete Inputs
String dialogResponse(Response response) {
  String res;
  
  if (response == null){
    res = "Check your internet connection.";
  }
  else{
    switch (response.statusCode) {
      case 400:
        res = "There are issues with your input\n check your data and try again";
        break;
      case 401:
      case 403:
        res = "Your are not authorized\n to do this.";
        break;
      case 404:
        res = "Not Found.";
        break;
      case 500:
        res = "There is an issue with our server\nwait a few seconds and try again.";
        break;
      default:
        res = "Check your internet connection.";
        break;
    }
  }
  return res;
}*/