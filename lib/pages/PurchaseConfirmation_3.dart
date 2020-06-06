import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tu_comida/widgets/ConfirmationButtons.dart';
import 'package:tu_comida/widgets/ConfirmationItem.dart';
import 'package:tu_comida/widgets/ShopCharges.dart';

class PurchaseConfirmation3 extends StatefulWidget {
  PurchaseConfirmation3() : super();

  @override
  _PurchaseConfirmation3State createState() => _PurchaseConfirmation3State();
}

class _PurchaseConfirmation3State extends State<PurchaseConfirmation3> {
  _PurchaseConfirmation3State();
  String info =
      'This is the last check. Make sure that everything is in order.';
  String verification = 'Verification Process 3 of 3';
  String information = 'Last Check';

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 2,
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              color: Colors.black87,
              onPressed: () => Navigator.pop(context),
            ),
            Text(
              '$verification',
              style: TextStyle(
                //fontSize: ,
                color: Colors.black45,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade50,
      body: ListView(
        children: <Widget>[
          Container(
            //height: screenHeight * 79,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    '$information:',
                    style: TextStyle(
                      fontSize: screenWidth * 5,
                      color: Colors.black45,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 9.0, right: 10, bottom: 10),
                  child: Text(
                    '$info',
                    maxLines: 3,
                    style: TextStyle(
                      //fontSize: ,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    'Products',
                    style: TextStyle(
                      fontSize: screenWidth * 5,
                      color: Colors.black45,
                    ),
                  ),
                ),
                // ver en kso de q sea solo para mirar el producto qitar todos los parametros q sobran
                ConfirmationItem(
                  productName: 'Hamburgers with fries',
                  productPrice: 5.30,
               
                  image: Image.asset(
                    'assets/comida/food4.jpg',
                    fit: BoxFit.cover,
                  ),cant: 3,
                ), ConfirmationItem(
                  productName: 'Hamburgers with fries',
                  productPrice: 5.30,
                 
                  image: Image.asset(
                    'assets/comida/food4.jpg',
                    fit: BoxFit.cover,
                  ),cant: 3,
                ),
                 ConfirmationItem(
                    productName: 'Hamburgers with fries',
                    productPrice: 5.30,
                 
                    image: Image.asset(
                      'assets/comida/food7.jpg',
                      fit: BoxFit.cover,
                    ),cant: 2,
                  ),
                ShopCharge(
                  charge: 'Shipping',
                  price: 0,
                  chargeColor: Colors.black87,
                  priceColor: Colors.black45,
                ),
                ShopCharge(
                  charge: 'Discounts',
                  price: -3.0,
                  chargeColor: Colors.black87,
                  priceColor: Colors.amber,
                ),
                ShopCharge(
                  charge: 'Total',
                  price: 12.9,
                  chargeColor: Colors.black87,
                  priceColor: Colors.black45,
                ),
                ConfirmationButtons(
                  button: 'Confirm',
                  buttonAction: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
