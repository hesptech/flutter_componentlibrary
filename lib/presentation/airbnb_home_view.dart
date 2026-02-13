

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SafeArea(child: SizedBox(height: 16.0,)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/icon_menu.svg"),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1534528741775-53994a69daeb"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's Find YourApartments",
                style: TextStyle(
                  fontSize: 26.0,
                  height: 1.5,
                  color: Color.fromRGBO(33, 45, 82, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 59.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(251, 251, 251, 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.only(left: 16.0, right: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your apartments...",
                            hintStyle: GoogleFonts.inter(
                              color: Color.fromRGBO(153, 163, 196, 1),
                            )),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 92, 92, 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        CupertinoIcons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Text(
                "Popular",
                style: TextStyle(
                  fontSize: 18.0,
                  height: 1.5,
                  color: Color.fromRGBO(33, 45, 82, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 300.0,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return HouseCard(
                    house: StaticData.properties[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.0,
                  );
                },
                itemCount: StaticData.properties.length,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Text(
                "Trending",
                style: TextStyle(
                  fontSize: 18.0,
                  height: 1.5,
                  color: Color.fromRGBO(33, 45, 82, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 300.0,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return HouseCard(
                    house: StaticData.properties[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.0,
                  );
                },
                itemCount: StaticData.properties.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}


class StaticData {
  static final List<Property> properties = [
    Property(
      name: "Royal Malewane",
      description: "Are you searching for luxury hotels? This is for you !",
      price: "\$ 250",
      imagePath: "assets/images/house1.png",
    ),
    Property(
      name: "Soneve Kiri",
      description: "Are you searching for luxury hotels? This is for you !",
      price: "\$220",
      imagePath: "assets/images/house2.png",
    ),
  ];
}

class Property {
  final String name;
  final String description;
  final String imagePath;
  final String price;

  Property(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price});
}

class HouseCard extends StatelessWidget {
  final Property house;
  const HouseCard({super.key, required this.house});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 300.0,
        width: 255.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0xFFF4F5F6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      house.imagePath,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    house.description,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(138, 150, 190, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "From",
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(64, 74, 106, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: house.price,
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromRGBO(255, 92, 92, 1),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

  