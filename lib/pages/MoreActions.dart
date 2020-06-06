import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/ActionsItem.dart';

class MoreActions extends MaterialPageRoute<void> {
  MoreActions(String actionText, List<ActionsItem> items)
      : super(builder: (BuildContext context) {
          var screenWidth = MediaQuery.of(context).size.width / 100;
          var screenHeight = MediaQuery.of(context).size.height / 100;
          return Scaffold(
              backgroundColor: Colors.grey.shade50,
              body: SafeArea(
                child: CustomScrollView(slivers: <Widget>[
                  SliverAppBar(
                    title: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                          ),
                          color: Colors.black87,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.grey.shade50,
                    expandedHeight: 120,
                    elevation: 0,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(titlePadding: EdgeInsetsDirectional.only(start: 63,bottom: 16,top:1),
                      title: Text('$actionText',style: TextStyle(color: Colors.black87),),
                    ),
                  ),
                  SliverFillRemaining(child:Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: ListView(children:items,primary: false,shrinkWrap: true,),
                  ),hasScrollBody: false,)
                 
                ]),
              ));
        });
}
