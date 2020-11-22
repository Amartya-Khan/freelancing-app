import 'package:flutter/material.dart';
import 'package:freelancing_platform/screens/details/details.dart';
import 'package:freelancing_platform/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedGigs extends StatelessWidget {
  const FeaturedGigs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
        child: Row(
          children: <Widget>[
            RecomendPlantCard(
              image: "assets/featured/cosmetic packaging.jpg",
              serviceLine1: "Design for",
              serviceLine2: "Cosmetics",
              name: "Samantha",
              price: 440,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
            ),
            RecomendPlantCard(
              image: "assets/featured/three-d.jpg",
              serviceLine1:"3D modelling",
              serviceLine2: 'for games',
              name: "Corpse",
              price: 440,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
            ),
            RecomendPlantCard(
              image: "assets/featured/caricature.jpg",
              serviceLine1: "Caricatire",
              serviceLine2: "Illustrations",
              name: "John Doe",
              price: 440,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.serviceLine1,
    this.serviceLine2,
    this.name,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, serviceLine1, serviceLine2, name;

  final int price;

  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding/2,
        right: kDefaultPadding/2,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2,
      ),
      width: size.width * 0.56,
      child: Column(
        children: <Widget>[
          ClipRRect(
            
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(image, fit: BoxFit.fill, height: size.height*0.25, width: size.width*0.56)),
            
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: Colors.deepPurpleAccent.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$serviceLine1\n".toUpperCase(),
                            style: GoogleFonts.montserrat( textStyle: TextStyle(fontSize: 13,
                             color: Colors.black, 
                             fontWeight: FontWeight.w500))
                            ),
                            TextSpan(
                            text: "$serviceLine2\n".toUpperCase(),
                            style: GoogleFonts.montserrat( textStyle: TextStyle(fontSize: 13,
                             color: Colors.black, 
                             fontWeight: FontWeight.w500))
                            ),
                            
                        TextSpan(
                          text: "$name",
                          // .toUpperCase(),
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                            color: Colors.deepPurpleAccent.withOpacity(0.5),)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.deepPurpleAccent),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
