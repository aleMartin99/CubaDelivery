import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/PlaceItem.dart';

class PlaceList extends StatefulWidget {
  PlaceList({this.places});

  final List<PlaceItem> places;

  @override
  _PlaceListState createState() => _PlaceListState(places: places);
}

class _PlaceListState extends State<PlaceList> {
  _PlaceListState({this.places});

  final List<PlaceItem> places;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Container(
      margin: EdgeInsets.only(
        right: screenWidth * 2.5,
        left: screenWidth * 2.5,
      ),
      child: Column(
        children: places,
      ),
    );
  }
}
