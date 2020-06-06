import 'package:flutter/material.dart';

class RestaurantInfo extends MaterialPageRoute<void> {
  RestaurantInfo(
    String description,
    String workingDays,
    String workingHours,
    String address,
  ) : super(builder: (BuildContext context) {
          var screenWidth = MediaQuery.of(context).size.width / 100;
          var screenHeight = MediaQuery.of(context).size.height / 100;
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.grey.shade200,
              title: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Information',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.grey.shade200,
            body: SafeArea(
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 14, top: 9),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.0,
                            bottom: 1,
                          ),
                          child: Text(
                            'Description',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.0,
                            bottom: 14,
                          ),
                          child: Text(
                            '$description',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.0,
                            bottom: 1,
                          ),
                          child: Text(
                            'Schedule',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            '$workingDays',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.0,
                            bottom: 14,
                          ),
                          child: Text(
                            '$workingHours',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.0,
                            bottom: 1,
                          ),
                          child: Text(
                            'Address',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.0,
                            bottom: 14,
                          ),
                          child: Text(
                            '$address',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          );
        });
}
