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
    return Scaffold(
        backgroundColor: bg,
        // appBar: AppBar(
        //   backgroundColor: Colors.deepPurpleAccent,
        //   title: Text(
        //     'Search',
        //     style: GoogleFonts.montserrat(),
        //   ),
        //   actions: <Widget>[
        //     Padding(
        //       padding: EdgeInsets.only(right: 20),
        //       child: GestureDetector(
        //         child:
        //             Tooltip(child: Icon(Icons.exit_to_app), message: "Logout"),
        //         onTap: () => _auth.signOut(),
        //       ),
        //     ),
        //   ],
        // ),
        body: GridView.count(
            // grid with 2 columns.
            crossAxisCount: 2,
            children: <Widget>[
              GridTileIcon(svg: SvgPicture.asset('assets/icons/photography.svg'), categoryName: 'Photography',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/coding.svg'), categoryName: 'Programming',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/edit_image.svg'), categoryName: 'Image Editing',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/online_ads.svg'), categoryName: 'Online Advertisement',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/gaming.svg'), categoryName: 'Game assets & graphics',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/write.svg'), categoryName: 'Writing',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/sm-1.svg'), categoryName: 'Social Media Content',),
              GridTileIcon(svg: SvgPicture.asset('assets/icons/video.svg'), categoryName: 'Videography',),
              
            ]));
  }
}
