import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  ProductView({
    @required this.image,
    this.description,
    this.name,
    this.theme1,
    this.theme2,
    this.theme3,
    this.only1,
    this.only2,
    this.only3,
    this.only4,
    this.optional1,
    this.optional2,
    this.optional3,
    // this.cant,
  });
  final Image image;
  final String description;
  final String name;
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
  final int cant = 0;

  @override
  _ProductViewState createState() => _ProductViewState(
      image: image,
      description: this.description,
      name: name,
      theme1: theme1,
      theme2: theme2,
      theme3: theme3,
      only1: only1,
      only2: only2,
      only3: only3,
      only4: only4,
      optional1: optional1,
      optional2: optional2,
      optional3: optional3,
      cant: cant);
}

class _ProductViewState extends State<ProductView> {
  _ProductViewState({
    this.image,
    this.description,
    this.name,
    this.theme1,
    this.theme2,
    this.theme3,
    this.only1,
    this.only2,
    this.only3,
    this.only4,
    this.optional1,
    this.optional2,
    this.optional3,
    this.cant,
  });
  Image image;
  String description;
  String name;
  String theme1;
  String theme2;
  String theme3;
  String only1;
  String only2;
  String only3;
  String only4;
  String optional1;
  String optional2;
  String optional3;
  int cant;

// uno x cada tema
  int _radioVal1 = 0;
  int _radioVal2 = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white.withOpacity(0.9), elevation: 0,
        // elevation: 1.5,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ///// cambiar color verde feo
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 10, right: 2, left: 17),
                child: Row(
                  children: <Widget>[
                    Card(
                      color: Colors.grey.shade100,
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black45,
                            // size: 28,
                          ),
                          onPressed: () => setState(() {
                            if (cant > 0) cant--;
                          }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 9.0, right: 9),
                      child: Text(
                        '$cant',
                        style: TextStyle(
                            fontSize: screenWidth*5,
                            color: Colors.black),
                      ),
                    ),
                    Card(
                      color: Colors.grey.shade100,
                      clipBehavior: Clip.antiAlias,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.black45,
                          // size: 28,
                        ),
                        onPressed: () => setState(() {
                          cant++;
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 10, right: 8, left: 1),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.green,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                        alignment: Alignment.center,
                        height: screenHeight * 5.5,
                        width: screenWidth * 50,
                        child: InkWell(
                            // aqi va variable q calcula la cant d dinero d los agregos
                            child: Text(
                          'Add  "TotalMoney"',
                          style: TextStyle(color: Colors.white),
                        )))),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: <Widget>[
         Stack(
            children: <Widget>[
              Container(height: screenHeight * 43, child: image),
              Padding(
                padding: EdgeInsets.only(left: screenWidth*4,top: screenWidth*1),
                child: IconButton(icon: Icon(Icons.arrow_back),onPressed:()=> Navigator.pop(context),),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 15, 10, 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8, right: 10),
                    child: Text(
                      '$name',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: screenHeight * 2.7,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8, right: 10),
                    child: Text(
                      '$description',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: screenHeight * 1.6,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 8, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$theme1',
                          // maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: screenHeight * 2.4,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Text(
                            'Check one of the options',
                            // maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: screenHeight * 1.6,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [1]
                        .map(
                          (int index) => RadioListTile<int>(
                              title: Text(
                                '$only1',
                                // maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: screenHeight * 1.7,
                                  color: Colors.black54,
                                ),
                              ),
                              value: index,
                              groupValue: this._radioVal1,
                              onChanged: (int value) {
                                setState(() => this._radioVal1 = value);
                              }),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 8, right: 10),
                    child: Column(
                      children: [2]
                          .map(
                            (int index) => RadioListTile<int>(
                                title: Text(
                                  '$only2',
                                  // maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: screenHeight * 1.7,
                                    color: Colors.black54,
                                  ),
                                ),
                                value: index,
                                groupValue: this._radioVal1,
                                onChanged: (int value) {
                                  setState(() => this._radioVal1 = value);
                                }),
                          )
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 8, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$theme2',
                          // maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: screenHeight * 2.4,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Text(
                            'Check one of the options',
                            // maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: screenHeight * 1.6,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [1]
                        .map(
                          (int index) => RadioListTile<int>(
                              title: Text(
                                '$only3',
                                // maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: screenHeight * 1.7,
                                  color: Colors.black54,
                                ),
                              ),
                              value: index,
                              groupValue: this._radioVal2,
                              onChanged: (int value) {
                                setState(() => this._radioVal2 = value);
                              }),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 8, right: 10),
                    child: Column(
                      children: [2]
                          .map(
                            (int index) => RadioListTile<int>(
                                title: Text(
                                  '$only4',
                                  // maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: screenHeight * 1.7,
                                    color: Colors.black54,
                                  ),
                                ),
                                value: index,
                                groupValue: this._radioVal2,
                                onChanged: (int value) {
                                  setState(() => this._radioVal2 = value);
                                }),
                          )
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 8, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$theme3',
                          // maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: screenHeight * 2.4,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Text(
                            'Check the options',
                            // maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: screenHeight * 1.6,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(children: <Widget>[
                    Only(text: optional1),
                    Only(text: optional2),
                    Only(text: optional3),
                  ]),
                ]),
          )
        ],
      ),
    );
  }
}

class Only extends StatefulWidget {
  Only({Key key, @required this.text})
      : super(
          key: key,
        );
  final String text;
  @override
  _MyOnlyState createState() => _MyOnlyState(text: text);
}

class _MyOnlyState extends State<Only> {
  _MyOnlyState({@required this.text});
  String text;
  // int _radioVal = 0;
  bool marked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CheckboxListTile(
            // activeColor: Colors.black87,
            controlAffinity: ListTileControlAffinity.leading,
            // dense: true,
            onChanged: (bool value) {
              setState(() => this.marked = value);
            },
            value: this.marked,
            title: Text(
              '$text',
              style: TextStyle(
                // fontSize: screenHeight * 1.6,
                color: Colors.black45,
              ),
            )));
  }
}
