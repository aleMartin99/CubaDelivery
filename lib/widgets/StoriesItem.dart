import 'package:flutter/material.dart';
import 'package:tu_comida/pages/StoriesView.dart';
import 'PlaceItem.dart';

class StoriesItem extends StatelessWidget {
  StoriesItem(
      {@required this.image,
      this.header,
      this.title,
      this.description,
      this.places});
  final Image image;
  final String header;
  final String title;
  final String description;
  final List<PlaceItem> places;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return Container(
      height: screenWidth * 42,
      padding: EdgeInsets.only(right: screenWidth * 2),
      child: Column(
        children: [
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StoriesView(
                                name: header,
                                image: image,
                                title: title,
                                description: description,
                                places: places,
                              )));
                },
                splashColor:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                highlightColor: Colors.transparent,
                child: StoriesItemContent(
                  header: header,
                  image: image,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StoriesItemContent extends StatelessWidget {
  const StoriesItemContent({
    Key key,
    @required this.image,
    this.header,
  });
  final Image image;
  final String header;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
        theme.textTheme.headline.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subhead;
    var screenWidth = MediaQuery.of(context).size.width / 100;
    var screenHeight = MediaQuery.of(context).size.height / 100;
    return SizedBox(
      height: screenWidth * 26,
      width: screenWidth * 41.5,
      child: Stack(
          alignment: Alignment.topLeft,
          fit: StackFit.passthrough,
          children: <Widget>[
            image,
            DefaultTextStyle(
              maxLines: 4,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: descriptionStyle,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Text(
                  '$header',
                  style: TextStyle(
                      fontSize: screenHeight * 1.6, color: Colors.black),
                ),
              ),
            ),
          ]),
    );
  }
}
