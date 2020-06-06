import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tu_comida/pages/PurchaseConfirmation_3.dart';
import 'package:tu_comida/widgets/ConfirmationButtons.dart';

class PurchaseConfirmation2 extends StatefulWidget {
  PurchaseConfirmation2() : super();

  @override
  _PurchaseConfirmation2State createState() => _PurchaseConfirmation2State();
}

class _PurchaseConfirmation2State extends State<PurchaseConfirmation2> {
  _PurchaseConfirmation2State();
  String info =
      'Enter the destination Address. It doesn´t necessarily have to be your current location, must be where the order will be delivered.';
  String address = 'Destination Address';
  String municipality = 'Municipality';
  String verification = 'Verification Process 2 of 3';
  String information = 'Delivery';
  String legalInfo =
      'We have a strict privacy policy. This information is only for our use, it´s no visible for others clients.';
  String selectedProvince;

  /// ver las provincias donde se va a brindar servicios
  static const provinces = <String>[
    'Arroyo Naranjo',
    'Boyeros',
    'Centro Habana',
    'Cerro',
    'Cotorro',
    'Diez de Octubre',
    'Guanabacoa',
    'Habana del Este',
    'Habana Vieja',
    'La Lisa',
    'Marianao',
    'Playa',
    'Plaza de la Revolución',
    'Regla',
    'San Miguel del Padrón',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = provinces
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
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
                //Municipality
                SizedBox(height: 24),
                ListTile(
                  title: Text(
                    'Choose a Municipality',
                    style: TextStyle(
                      //fontSize: ,
                      color: Colors.black87,
                    ),
                  ),
                  trailing: DropdownButton(
                    value: selectedProvince,
                    onChanged: ((String newValue) {
                      setState(() {
                        selectedProvince = newValue;
                      });
                    }),
                    items: _dropDownMenuItems,
                    hint: Text(
                      '$municipality',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                TextFormField(decoration:InputDecoration(border:OutlineInputBorder(),
                hintText: address,
                labelText: 'Address',
                helperText: 'The order will be delivered to this address.'                       
                ),maxLines: 3,),

                ConfirmationButtons(
                 button: 'Next',
                  buttonAction: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PurchaseConfirmation3())),
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
