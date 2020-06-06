import 'package:flutter/material.dart';
import 'package:tu_comida/widgets/ShopRecommended.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({this.recomendedItems}) : super();
final List<ShopRecommended> recomendedItems;
  @override
  Widget build(BuildContext context) {

    /// ver si hace falta regular tamaño(wrap en container con tamaño definido)
    return  ListView(scrollDirection: Axis.horizontal,shrinkWrap: true, primary: false,
            children:   recomendedItems ,);
  }
}