import 'package:flutter/material.dart';

class MyFilter extends StatefulWidget {
  MyFilter({Key key, @required this.text})
      : super(
          key: key,
        );
  final String text;
  @override
  _MyFilterState createState() => _MyFilterState(text: text);
}

class _MyFilterState extends State<MyFilter> {
  _MyFilterState({@required this.text});
  String text;
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
      },  value: this.marked,
      title: Text('$text'),
    ));
  }
}
