import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tu_comida/pages/PurchaseConfirmation_2.dart';
import 'package:tu_comida/widgets/ConfirmationButtons.dart';

class PurchaseConfirmation1 extends StatefulWidget {
  PurchaseConfirmation1() : super();

  @override
  _PurchaseConfirmation1State createState() => _PurchaseConfirmation1State();
}

class _PurchaseConfirmation1State extends State<PurchaseConfirmation1> {
  _PurchaseConfirmation1State();
  String info =
      'Enter your Name and Phone Number. In case that we need to reach you we will use the Phone number in the info.';
  String fullName = 'Full Name';
  String name = 'Name';
  String verification = 'Verification Process 1 of 3';
  String phoneDescription = 'Where can we reach you?';
  String information = 'Information';
  String legalInfo =
      'We have a strict privacy policy. This information is only for our use, it´s no visible for others clients.';
  String _name;
  String _phoneNumber;

  /// Validacion nombre
  /// ver si c qeda la validacion para poner texto en variable para la internacionalizacion
  String _validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = new RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value))
      return 'Please enter only alphabetical characters.';
    return null;
  }

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
            height: screenHeight * 79,
            // color: Colors.red,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              shrinkWrap: true, primary: false,
              // crossAxisAlignment: CrossAxisAlignment.start,
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
                //Name
                SizedBox(height: 24),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(
                      Icons.person_outline,
                    ),
                    // ver si es nombre del q recibe el pedido o el q paga
                    hintText: '$fullName ',
                    hintStyle: TextStyle(color: Colors.black45),
                    labelText: '$name *',
                  ),
                  onSaved: (String value) {
                    this._name = value;
                  },
                  validator: _validateName,
                ),
                //Phone Number
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.phone),

                    /// seguir poniendo el texto en variables para internacionalizacion
                    hintText: ' $phoneDescription',
                    hintStyle: TextStyle(color: Colors.black45),
                    labelText: 'Phone Number *',
                    prefixText: '+53- ',
                  ),
                  keyboardType: TextInputType.phone,
                  onSaved: (String value) {
                    this._phoneNumber = value;
                  },
                  inputFormatters: <TextInputFormatter>[],
                ),

                ConfirmationButtons(
                  button: 'Next',
                  buttonAction: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PurchaseConfirmation2())),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                '$legalInfo',
                style: TextStyle(
                  fontSize: screenWidth * 4,
                  color: Colors.black45,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
