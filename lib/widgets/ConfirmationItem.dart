import 'package:flutter/material.dart';


class ConfirmationItem extends StatefulWidget {
  ConfirmationItem(
        
      {this.image,
      this.productPrice,
      this.productName,
      this.cant})
      : super();

  final Image image;
  final double productPrice;
  final String productName;
  final int cant;
  @override
  _ConfirmationItemState createState() => _ConfirmationItemState(
      image: image,
      productName: productName,
      productPrice: productPrice,
      cant: cant);
}

class _ConfirmationItemState extends State<ConfirmationItem> {
  _ConfirmationItemState({
    this.image,
    this.productPrice,
    this.productName,
    this.cant,
  });
  final Image image;
  final double productPrice;
  final String productName;
 

  final int cant;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      child: InkWell(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 10, top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: screenWidth * 27,
                    height: screenWidth * 20,
                    child: Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: image,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //  color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                '$productName',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: screenWidth * 4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.0,left:4),
                              child: Text(
                                '$cant ',
                                style: TextStyle(
                                    //fontSize: screenHeight*1.8,
                                    color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 27.0, top: 9),
                    child: Text(
                      '$productPrice cuc',
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black45, fontSize: screenWidth * 3.8),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 34.0,
              ),
              child: Divider(
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
