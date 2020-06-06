import 'package:flutter/material.dart';

List<Image> toImage(List<String> images) {
  List<Image> list;
  for (String image in images) {
    list.add(Image.asset(
      image,
      fit: BoxFit.cover,
    ));
  }
  return list;
}