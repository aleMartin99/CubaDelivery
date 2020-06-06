import 'package:flutter/material.dart';
import 'package:tu_comida/pages/MoreActions.dart';
import 'ActionsItem.dart';

class ActionsList extends StatelessWidget {
  ActionsList({
    this.actionText,
    this.items,
  });
  final String actionText;
  final List<ActionsItem> items;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    int cantItems = items.length;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 14, bottom: 10),
          child:  InkWell( splashColor: Colors.transparent,
         highlightColor: Colors.transparent,
            onTap:()=>Navigator.push(context,MoreActions(actionText,items)) ,
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('$actionText',
                        style: TextStyle(
                          fontSize: screenWidth*5,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text("$cantItems",
                          style: TextStyle(
                            height: 1,
                            color: Colors.black45,
                            fontSize:screenWidth*4,
                          )),
                    ),
                  ],
                ),
                Text('See All',
                    style: TextStyle(
                        color: Colors.green, fontSize:screenWidth*5)),
              ],
            ),
          ),
        ),
        Container(
            height:  screenWidth * 76,
            margin: EdgeInsets.only(
              left: 8,
              bottom: 20,
            ),
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                children: items))
      ],
    );
  }
}
