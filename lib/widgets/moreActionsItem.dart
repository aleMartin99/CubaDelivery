import 'package:flutter/material.dart';

class MoreActionsItem extends StatelessWidget {
 MoreActionsItem({
    this.remaining
  });
  final int remaining;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.only(
        bottom: screenHeight * 1,
        right: 8,
      ),
      child: Card(color: Colors.green, clipBehavior: Clip.antiAlias,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: InkWell(onTap: ()=> Navigator.push(context, null),
                              child: SizedBox(
          height: screenHeight * 34,
          width: screenWidth * 40,
          child:Container(
            alignment: Alignment.center,
            child: Text('Another $remaining',style:TextStyle(color: Colors.white)),)
        ),
              ),
      ),
    );
  }
}