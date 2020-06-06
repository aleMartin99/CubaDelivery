import 'package:flutter/material.dart';

class CatalogRebaja extends StatelessWidget {
  CatalogRebaja({
    @required this.image,
    this.timeLeft,
    this.description,
  });
  final Image image;
  final double timeLeft;
  final String description;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
      child: SizedBox(
        height: screenWidth * 45,
        width: screenWidth * 93,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            Container(
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Card(
                  color: Colors.grey.shade50,
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: InkWell(
                    /// hace aglo
                    onTap: null,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Container(
                          child: image,
                          width: double.maxFinite,
                        ),
                        Container(
                          //color: Colors.red,
                          width: screenWidth * 65,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 7, 5, 12),
                            child: ListTile(
                              title: Text(
                                '$description',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: screenHeight * 2,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    splashColor: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.12),
                    highlightColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Card(
                  color: Colors.grey.shade50,
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      '$timeLeft hours left',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: screenHeight * 1.5, color: Colors.black),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
