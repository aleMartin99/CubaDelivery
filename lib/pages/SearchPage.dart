import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/SearchItem.dart';

class SearchPage extends MaterialPageRoute<void> {
  SearchPage(String word, List<SearchItem> items)
      : super(builder: (BuildContext context) {
          var screenWidth = MediaQuery.of(context).size.width / 100;
          var screenHeight = MediaQuery.of(context).size.height / 100;
          return Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.grey.shade50,
                elevation: 1,
                title: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      color: Colors.black87,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: word != null
                          ? Text('$word',style: TextStyle(color: Colors.black87),)
                          : Padding(padding: EdgeInsets.all(0)),
                    ),
                  ],
                )),
            backgroundColor: Colors.grey.shade50,
            body: ListView(
              children: items,
            ),
          );
        });
}
