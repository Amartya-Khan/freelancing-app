import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridTileIcon extends StatelessWidget {
  const GridTileIcon({
    @required this.svg,
    @required this.categoryName,
  });

  final SvgPicture svg;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: (width / 2) * 0.2),
          child: IconButton(
            icon: svg,
            onPressed: () {},
          ),
        ),
        Text("$categoryName")
      ],
    ));
  }
}
