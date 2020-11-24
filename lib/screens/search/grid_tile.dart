import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
            iconSize: 45,
            icon: svg,
            // color: Colors.deepPurpleAccent,
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: AutoSizeText("$categoryName", 
          textAlign: TextAlign.center,
          maxLines: 2,
          style: textStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),),
        )
      ],
    ));
  }
}
