import 'package:flutter/material.dart';

class FancyFilter extends StatelessWidget {
  FancyFilter({
    @required this.image,
    this.header,
    this.tap,
  });
  var tap;
  final Image image;
  final String header;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      padding: EdgeInsets.only(right: screenWidth * 2),
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
        child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: this.tap,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 8.1,
                  child: image,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('$header'),
                )
              ],
            )),
      ),
    );
  }
}
