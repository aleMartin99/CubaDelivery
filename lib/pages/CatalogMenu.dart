import 'package:flutter/material.dart';

class CatalogMenu extends MaterialPageRoute<void> {
  CatalogMenu(  String classification1,int cant1,
    String classification2,int cant2,
    String classification3,int cant3,
    String classification4,int cant4,
    String classification5,int cant5,
    String classification6,int cant6)
      : super(builder: (BuildContext context) {
         // var screenWidth = MediaQuery.of(context).size.width / 100;
          var screenHeight = MediaQuery.of(context).size.height / 100;
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.grey.shade100,
              //backgroundColor: Colors.white,
              elevation: 1,
              title: Row(
                children: <Widget>[
                  IconButton(icon:Icon(Icons.close, color: Colors.black87,),onPressed:()=> Navigator.pop(context),),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text('Menu',style: TextStyle(color: Colors.black87),),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.grey.shade200,
            //extendBodyBehindAppBar: true,
            body: ListView(
              children: <Widget>[
                InkWell(onTap: null,
                                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0, bottom: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$classification1',
                            style: TextStyle(fontSize: screenHeight * 2.4)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('$cant1',
                              style: TextStyle(
                                  fontSize: screenHeight * 1.9,
                                  color: Colors.black45)),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: null,
                                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0, bottom: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$classification2',
                            style: TextStyle(fontSize: screenHeight * 2.4)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                            child: Text('$cant2',
                              style: TextStyle(
                                  fontSize: screenHeight * 1.9,
                                  color: Colors.black45)),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: null,
                                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0, bottom: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$classification3',
                            style: TextStyle(fontSize: screenHeight * 2.4)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                            child: Text('$cant3',
                              style: TextStyle(
                                  fontSize: screenHeight * 1.9,
                                  color: Colors.black45)),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: null,
                                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0, bottom: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$classification4',
                            style: TextStyle(fontSize: screenHeight * 2.4)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                             child: Text('$cant4',
                              style: TextStyle(
                                  fontSize: screenHeight * 1.9,
                                  color: Colors.black45)),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: null,
                                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0, bottom: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$classification5',
                            style: TextStyle(fontSize: screenHeight * 2.4)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                           child: Text('$cant5',
                              style: TextStyle(
                                  fontSize: screenHeight * 1.9,
                                  color: Colors.black45)),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: null,
                                                                      child: Padding(
                    padding: EdgeInsets.only(left: 22.0, bottom: 15, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$classification6',
                            style: TextStyle(fontSize: screenHeight * 2.4)),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                             child: Text('$cant6',
                              style: TextStyle(
                                    fontSize: screenHeight * 1.9,
                                    color: Colors.black45)),
                        ),
                      ],
                    ),
                  ),
                                  ),
               
                
              ],
            ),
          );
        });
}
