import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/CatalogItem.dart';
import 'package:tu_comida/widgets/CatalogRebaja.dart';
import 'CatalogMenu.dart';
import 'RestaurantInfo.dart';

class PlaceCatalog extends StatefulWidget {
  PlaceCatalog({
    this.time,
    this.price,
    this.priceRange,
    this.initDelivery,
    this.finalDelivery,
    this.restaurant,
    this.classification1,
    this.cant1,
    this.classification2,
    this.cant2,
    this.classification3,
    this.cant3,
    this.classification4,
    this.cant4,
    this.classification5,
    this.cant5,
    this.classification6,
    this.cant6,
    this.products,
    this.rebajaImage,
    this.rebajaDescription,
    this.rebajaTime,
    this.descriptionInfo,
    this.workingDays,
    this.workingHours,
    this.address,
  });
  final int time;
  final double price;
  final double priceRange;
  final double initDelivery;
  final double finalDelivery;
  final String restaurant;
  final String classification1;
  final int cant1;
  final String classification2;
  final int cant2;
  final String classification3;
  final int cant3;
  final String classification4;
  final int cant4;
  final String classification5;
  final int cant5;
  final String classification6;
  final int cant6;
  final List<CatalogItem> products;
  final Image rebajaImage;
  final String rebajaDescription;
  final double rebajaTime;
  final String descriptionInfo;
  final String workingDays;
  final String workingHours;
  final String address;
  @override
  _PlaceCatalogState createState() => _PlaceCatalogState(
        time: time,
        price: price,
        priceRange: priceRange,
        initDelivery: initDelivery,
        finalDelivery: finalDelivery,
        restaurant: restaurant,
        classification1: classification1,
        cant1: cant1,
        classification2: classification2,
        cant2: cant2,
        classification3: classification3,
        cant3: cant3,
        classification4: classification4,
        cant4: cant4,
        classification5: classification5,
        cant5: cant5,
        classification6: classification6,
        cant6: cant6,
        products: products,
        rebajaImage: rebajaImage,
        rebajaDescription: rebajaDescription,
        rebajaTime: rebajaTime,
        descriptionInfo: descriptionInfo,
        workingDays: workingDays,
        workingHours: workingHours,
        address: address,
      );
}

class _PlaceCatalogState extends State<PlaceCatalog> {
  _PlaceCatalogState({
    this.time,
    this.price,
    this.priceRange,
    this.initDelivery,
    this.finalDelivery,
    this.restaurant,
    this.classification1,
    this.cant1,
    this.classification2,
    this.cant2,
    this.classification3,
    this.cant3,
    this.classification4,
    this.cant4,
    this.classification5,
    this.cant5,
    this.classification6,
    this.cant6,
    this.products,
    this.rebajaImage,
    this.rebajaDescription,
    this.rebajaTime,
    this.descriptionInfo,
    this.workingDays,
    this.workingHours,
    this.address,
  });
  final int time;
  final double price;
  final double priceRange;
  final double initDelivery;
  final double finalDelivery;
  final String restaurant;
  final String classification1;
  final int cant1;
  final String classification2;
  final int cant2;
  final String classification3;
  final int cant3;
  final String classification4;
  final int cant4;
  final String classification5;
  final int cant5;
  final String classification6;
  final int cant6;
  final List<CatalogItem> products;
  final Image rebajaImage;
  final String rebajaDescription;
  final double rebajaTime;
  final String descriptionInfo;
  final String workingDays;
  final String workingHours;
  final String address;

  @override
  Widget build(BuildContext context) {
    CatalogRebaja rebaja = new CatalogRebaja(
      image: rebajaImage,
      description: rebajaDescription,
      timeLeft: rebajaTime,
    );
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                CatalogMenu(
                  '$classification1',
                  cant1,
                  '$classification2',
                  cant2,
                  '$classification3',
                  cant3,
                  '$classification4',
                  cant4,
                  '$classification5',
                  cant5,
                  '$classification6',
                  cant6,
                ));
          },
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
          tooltip: 'Menu',
        ),
        body: SafeArea(
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.grey.shade200,
              expandedHeight: 120,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
                      onPressed: null),
                ],
              ),
              elevation: 0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  '$restaurant',style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: screenHeight * 20,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 5, top: 10),
                          child: TimeBubble(time: time),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 10),
                          child: PriceBubble(
                            priceRange: priceRange,
                            initDelivery: initDelivery,
                            finalDelivery: finalDelivery,
                            price: price,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            SliverAppBar(
              backgroundColor: Colors.grey.shade100,
              elevation: 0,
              automaticallyImplyLeading: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              pinned: true,
              title: Container(
                height: screenWidth * 10,
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Card(
                      color: Colors.black54,
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            '$classification1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            '$classification2',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            '$classification3',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            '$classification4',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            '$classification5',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Center(
                          child: Text(
                            '$classification6',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 20),
                  child: Text(
                    '$classification1',
                    style: TextStyle(
                      fontSize: screenHeight * 2.4,
                      color: Colors.black45,
                    ),
                  ),
                ),
                //////Esta es la rebaja, no siempre va a ser mostrada
                rebaja.image != null
                    ? rebaja
                    : Padding(padding: EdgeInsets.all(0.5)),

                ListView(
                  children: products,
                  primary: false,
                  shrinkWrap: true,
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 20),
                  child: Text(
                    '$classification2',
                    style: TextStyle(
                      fontSize: screenHeight * 2.4,
                      color: Colors.black45,
                    ),
                  ),
                ),
                ListView(
                  children: products,
                  primary: false,
                  shrinkWrap: true,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 5),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      color: Colors.grey.shade300,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                          alignment: Alignment.center,
                          height: screenHeight * 5.5,
                          width: screenWidth * 50,
                          child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  RestaurantInfo(
                                    descriptionInfo,
                                    workingDays,
                                    workingHours,
                                    address,
                                  )),
                              child: Text(
                                'Restaurant Information',
                                style: TextStyle(color: Colors.black87),
                              )))),
                ),
              ],
            ))
          ]),
        ));
  }
}

class TimeBottomSheetContent extends StatelessWidget {
  TimeBottomSheetContent({@required this.time});
  final int time;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
        height: screenWidth * 59,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 9),
                  child: Text(
                    'Cuba Delivery services',
                    style: TextStyle(
                        fontSize: screenHeight * 2.8, color: Colors.black),
                    //textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Center(
                      child: Text('Delivery Time : $time min',
                          style: TextStyle(
                              fontSize: screenHeight * 1.8,
                              color: Colors.black54))),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 13),
              child: Container(
                width: double.maxFinite,
                height: screenHeight * 6,
                child: Card(
                  elevation: 0.5,
                  color: Colors.grey.shade100,
                  //padding: EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  // elevation: 2.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: InkWell(
                    onTap: (() => Navigator.pop(context)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('OK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenHeight * 2.3,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class TimeBubble extends StatelessWidget {
  TimeBubble({@required this.time});
  final int time;
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return TimeBottomSheetContent(time: time);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Card(
        elevation: 2,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$time min",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: screenWidth * 3),
            ),
          ),
          onTap: () {
            _showModalBottomSheet(context);
          },
        ));
  }
}

class PriceBottomSheetContent extends StatelessWidget {
  PriceBottomSheetContent({
    @required this.priceRange,
    this.initDelivery,
    this.finalDelivery,
  });
  final double priceRange;
  final double initDelivery;
  final double finalDelivery;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
        height: screenWidth * 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 17.0, top: 5),
              child: Text(
                'Delivery',
                style: TextStyle(
                    fontSize: screenHeight * 2.8, color: Colors.black),
                //textAlign: TextAlign.start,
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                      title: Text(
                        'Orders up to $priceRange cuc',
                        style: TextStyle(
                            fontSize: screenHeight * 1.8,
                            color: Colors.black54),
                      ),
                      trailing: Card(
                        elevation: 0.5,
                        color: Colors.grey.shade100,
                        //padding: EdgeInsets.all(10),
                        clipBehavior: Clip.antiAlias,
                        // elevation: 2.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text('$finalDelivery cuc',
                              style: TextStyle(
                                fontSize: screenHeight * 1.8,
                                color: Colors.black54,
                              )),
                        ),
                      )),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Orders from $priceRange cuc',
                      style: TextStyle(
                          fontSize: screenHeight * 1.8, color: Colors.black54),
                    ),
                    trailing: Card(
                      elevation: 0.5,
                      color: Colors.grey.shade100,
                      //padding: EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      // elevation: 2.5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$initDelivery cuc',
                          style: TextStyle(
                              fontSize: screenHeight * 1.8,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ]),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 10),
              child: Container(
                width: double.maxFinite,
                height: screenHeight * 6,
                child: Card(
                  elevation: 0.5,
                  color: Colors.grey.shade100,
                  //padding: EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  // elevation: 2.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: InkWell(
                    onTap: (() => Navigator.pop(context)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('OK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenHeight * 2.3,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class PriceBubble extends StatelessWidget {
  PriceBubble({
    @required this.priceRange,
    this.price,
    this.initDelivery,
    this.finalDelivery,
  });
  final double price;
  final double priceRange;
  final double initDelivery;
  final double finalDelivery;

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
      context: context,
      //useRootNavigator: true,
      // isDismissible: false,
      //elevation: ,
      backgroundColor: Colors.white,
      // isScrollControlled: true,
      builder: (context) {
        return PriceBottomSheetContent(
          priceRange: priceRange,
          initDelivery: initDelivery,
          finalDelivery: finalDelivery,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      // width: screenWidth * 100,
      child: Card(
        elevation: 2,
        color: Colors.white,
        //padding: EdgeInsets.all(10),
        clipBehavior: Clip.antiAlias,
        // elevation: 2.5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      ///// arreglar moneda depende d lo q c qiera
                      "Delivery $initDelivery - $finalDelivery cuc",
                      style: TextStyle(
                          color: Colors.black, fontSize: screenWidth * 3.3),
                    ),
                    Text(
                      ///// arreglar moneda depende d lo q c qiera
                      " _ $price cuc",
                      style: TextStyle(
                          color: Colors.black45, fontSize: screenWidth * 3.3),
                    ),
                  ],
                ),
                Text(
                  'Delivery service by Cuba Delivery',
                  style: TextStyle(
                      color: Colors.black45, fontSize: screenWidth * 2.7),
                )
              ],
            ),
          ),
          onTap: () {
            _showModalBottomSheet(context);
          },
        ),
      ),
    );
  }
}
