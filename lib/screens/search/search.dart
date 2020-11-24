import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/search/grid_tile.dart';
import 'package:freelancing_platform/services/auth.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatefulWidget {
  static String id = 'Search';

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final photoSvg = 'assets/icons/photography.svg';
    
    return Scaffold(
        backgroundColor: bg,
        body: GridView.count(
            // grid with 2 columns.
            crossAxisCount: 2,
            children: <Widget>[
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/photography.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Photography',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/coding.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Programming',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/edit_image.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Image Editing',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/online_ads.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Online Advertisement',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/gaming.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Game assets & graphics',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/write.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Writing',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/sm-1.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Social Media Content',
              ),
              GridTileIcon(
                svg: SvgPicture.asset('assets/icons/video.svg', color: Colors.deepPurpleAccent,),
                categoryName: 'Videography',
              ),
            ]));
  }
}
