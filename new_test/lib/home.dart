import 'package:flutter/cupertino.dart';
import 'package:new_test/rate.dart';
import 'package:new_test/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_test/setMenu.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 24),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                            width: 64,
                            height: 64,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/delivery-man.png"),
                                  fit: BoxFit.fitWidth,
                                )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'efood!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 32,
                      child: SvgPicture.asset('images/bell.svg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 10),
              child: CupertinoSearchTextField(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'All Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            All_Category(),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Set Menu',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    'View all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Set_menu(),
            /*Container(
              margin: EdgeInsets.only(top: 20,left: 30,right: 30),
              height: 200,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFfad05f),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFffe7aa),
                    blurRadius: 5.0,
                    offset: Offset(0.0, 7.0),
                  ),
                ],
              ),
              child: Stack(children: <Widget>[
                Positioned(
                  left: 40,
                  top: 25,
                  child: Text(
                    '60% off',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffffff),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 67,
                  child: Text(
                    'Mar14 - Mar20',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                    ),
                  ),
                ),
                Positioned(
                    left: 45,
                    top: 110,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFf66440),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFf28168),
                              blurRadius: 5.0,
                              offset: Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Join GYM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 25,
                    right: 15,
                    child: Container(
                        height: 120,
                        width: 120,
                        child: SvgPicture.asset('images/gym.svg'))),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, right: 35),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Course',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF636b78),
                      ),
                    ),
                    Text(
                      'See all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9d8fe6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: ListView.builder(
                itemCount: transaction.length,
                padding: EdgeInsets.only(left: 10, right: 10),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 90,
                    margin: EdgeInsets.only(bottom: 13),
                    padding: EdgeInsets.only(
                        left: 24, top: 12, bottom: 12, right: 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: SvgPicture.asset(transaction[index].photo),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  transaction[index].name,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  transaction[index].time,
                                  style: GoogleFonts.inter(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    RatingBar(
                                      rating: transaction[index].rating,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      transaction[index].rvcount,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black26),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        transaction[index].amount,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.inter(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF9d8fe6)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
