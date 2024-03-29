import 'package:flutter/material.dart';
import 'package:tu_comida/pages/Shop.dart';

class ConfirmationButtons extends StatefulWidget {
  ConfirmationButtons({this.buttonAction, this.button}) : super();

  var buttonAction;
  String button;
  @override
  _ConfirmationButtonsState createState() =>
      _ConfirmationButtonsState(buttonAction: buttonAction, button: button);
}

class _ConfirmationButtonsState extends State<ConfirmationButtons> {
  _ConfirmationButtonsState({this.buttonAction, this.button});
  var buttonAction;
  final String button;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 50, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ElevatedButton(
            //Hacer el cancel action, vira a Shop
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Shop())),
            child: Text('Cancel'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shadowColor: Colors.greenAccent,
              elevation: 3,
              textStyle: TextStyle(color: Colors.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              // minimumSize: Size(100, 40), //////// HERE
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shadowColor: Colors.greenAccent,
              elevation: 3,
              textStyle: TextStyle(color: Colors.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              // minimumSize: Size(100, 40), //////// HERE
            ),

            //Hacer el next action, va a la PurchaseConfirmation siguiente
            // hacer q tenga q pasarlo x parametro
            onPressed: buttonAction,
            child: Text('$button'),
          ),
        ],
      ),
    );
  }
}
