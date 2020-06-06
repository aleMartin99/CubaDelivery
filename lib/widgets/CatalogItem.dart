import 'package:flutter/material.dart';
import 'package:tu_comida/pages/ProductView.dart';

class CatalogItem extends StatelessWidget {
  CatalogItem(
      {this.image,
      this.productPrice,
      this.productName,
      this.description,
      this.theme1,
      this.theme2,
      this.theme3,
      this.only1,
      this.only2,
      this.only3,
      this.only4,
      this.optional1,
      this.optional2,
      this.optional3,this.cant});
  final Image image;
  final double productPrice;
  final String productName;
  final String description;
  final String theme1;
  final String theme2;
  final String theme3;
  final String only1;
  final String only2;
  final String only3;
  final String only4;
  final String optional1;
  final String optional2;
  final String optional3;
  final int cant;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
      child: SizedBox(
        //height: screenHeight * 20,
        width: screenWidth * 93,
        child: Card(
          color: Colors.grey.shade50,
          clipBehavior: Clip.antiAlias,
          elevation: 2.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProductView(
                     image: image,
                     description: description,
                     name: productName,
                     theme1: theme1,
                     theme2: theme2,
                     theme3: theme3,
                      only1:only1,
                      only2:only2,
                      only3:only3,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                      only4:only4,
                      optional1:optional1,
                      optional2:optional2,
                      optional3
                      : optional3) )); 
              
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                                  child: Container(
                    //color: Colors.red,
                    width: screenWidth * 56,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 7, 8, 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              '$productName',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: screenHeight * 2.3,
                                  color: Colors.black),
                            ),
                            subtitle: Text(
                              '$description',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: screenHeight * 1.6,
                                  color: Colors.black45),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: <Widget>[
                                Card(
                                  color: Colors.grey.shade200,
                                  elevation: 0.5,
                                  clipBehavior: Clip.antiAlias,
                                  child: InkWell(
                                    onTap: null,
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black45,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '$productPrice cuc',
                                    style: TextStyle(
                                        fontSize: screenHeight * 1.8,
                                        color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                 FittedBox(
                                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 16.5, 10.5, 16.5),
                      child: Container(
                        // color: Colors.red,
                        height: screenHeight * 14.2,
                        width: screenWidth * 31,
                        child: Card(
                          elevation: 0,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: FittedBox(fit: BoxFit.cover, child: this.image),
                        ),
                      ),
                    ),
                 ),
                
              ],
            ),
            splashColor:
                Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
