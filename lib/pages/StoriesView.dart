import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/PlaceItem.dart';
import 'package:tu_comida/widgets/PlaceList.dart';

class StoriesView extends StatefulWidget {
  StoriesView(
      {@required this.image,
      this.description,
      this.title,
      this.name,
      this.places});
  final Image image;
  final String description;
  final String title;
  final String name;
  final List<PlaceItem> places;
  @override
  _StoriesViewState createState() => _StoriesViewState(
        image: image,
        description: description,
        name: name,
        title: title,
        places: places
      );
}

class _StoriesViewState extends State<StoriesView> {
  _StoriesViewState(
      {this.image, this.description, this.title, this.name, this.places});
  final Image image;
  final String description;
  final String title;
  final String name;
  final List<PlaceItem> places;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: ListView(children: <Widget>[
          Stack(
            children: <Widget>[
              Stack(
                alignment: Alignment.topLeft,
                children: <Widget>[
                  Container(
                      //color: Colors.red,
                      width: double.maxFinite,
                      height: screenHeight * 28,
                      child: image),
                  DefaultTextStyle(
                    maxLines: 4,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: screenHeight * 3.2, color: Colors.black87),
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, top: 40),
                      child: Text(
                        '$name',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 4, top: screenWidth * 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  //title: Text(''),
                                  content: Text(
                                      'This action is valid in certains restaurants, for customers that order through a mobile Application.'),
                                  actions: <Widget>[
                                    FlatButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Ok'),
                                        child: Text(
                                          'Ok',
                                          style: TextStyle(
                                              color: Colors.lightGreen),
                                        ))
                                  ],
                                ));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(25, 17, 10, 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 6, right: 10),
                      child: Text(
                        '$title',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: screenHeight * 2.7,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.0, bottom: 25, right: 10),
                      child: Text(
                        '$description',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: screenHeight * 1.7,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ])),
          PlaceList(
            places: places,
          )
        ]));
  }
}
