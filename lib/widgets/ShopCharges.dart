import 'package:flutter/material.dart';

class ShopCharge extends StatelessWidget {
   ShopCharge({this.chargeColor, this.priceColor, this.charge, this.price})
      : super();
  final Color chargeColor;
  final Color priceColor;
  final String charge;
  final double price;
  String realPrice = 'Free';
  String priceFree (double price){
    if(price != 0.0)
  realPrice = '$price cuc';
  return realPrice;}
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Padding(
      padding: EdgeInsets.only(left: 30.0, bottom: 10, top: 17, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Text(
              '$charge',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color:chargeColor, fontSize: screenWidth * 4),
            ),
          ),
          Text(
            priceFree(price),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: priceColor, fontSize: screenWidth * 4),
          ),
        ],
      ),
    );
  }
}
