import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_test/rate.dart';

class CardItem{
  final String pic;
  final String name;
  final int rate;
  final String amount;

  const CardItem({
    required this.pic,
    required this.name,
    required this.rate,
    required this.amount,
  });
}
class Set_menu extends StatefulWidget {
  const Set_menu({Key? key}) : super(key: key);

  @override
  _Set_menuState createState() => _Set_menuState();
}

class _Set_menuState extends State<Set_menu> {
  List<CardItem> item = [
    CardItem(pic: "images/bangla.jpg", name: "Bangla BreakFast" , rate: 4, amount: "60"),
    CardItem(pic: "images/indian.jpg", name: "Indian Lunch", rate: 5, amount: "120"),
    CardItem(pic: "images/first food.jpg", name: "First Food", rate: 3, amount: "200"),
    CardItem(pic: "images/italian.png", name: "Italian Snacks", rate: 4, amount: "90"),
    CardItem(pic: "images/chinese.jpg", name: "Chinese Dinner", rate: 5, amount: "400"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.separated(
        padding: EdgeInsets.all(15.0),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, _) => SizedBox(width: 10),
        itemBuilder: (context, index) => buildCard( item: item[index] ),
      ),
    );
  }

  Widget buildCard({required CardItem item}) => Container(
    width: 200,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio
            (
            aspectRatio: 4 / 3,
              child: Container(
                  width: 200,
                  child: Image.asset(item.pic)
              ),
            ),
          ),
        SizedBox(height: 5),
        Text(
          item.name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "BDT " + item.amount,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            RatingBar(
              rating: item.rate,
            ),
          ],
        ),
      ],
    ),
  );
}
