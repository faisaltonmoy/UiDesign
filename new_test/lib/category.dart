import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardItem{
  final String pic;
  final String name;

  const CardItem({
    required this.pic,
    required this.name,
});
}
class All_Category extends StatefulWidget {
  const All_Category({Key? key}) : super(key: key);

  @override
  _All_CategoryState createState() => _All_CategoryState();
}

class _All_CategoryState extends State<All_Category> {
  List<CardItem> item = [
    CardItem(pic: "images/bangla.jpg", name: "Bangla"),
    CardItem(pic: "images/indian.jpg", name: "Indian"),
    CardItem(pic: "images/first food.jpg", name: "First Food"),
    CardItem(pic: "images/italian.png", name: "Italian"),
    CardItem(pic: "images/chinese.jpg", name: "Chinese"),
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
        width: 100,
        child: Column(
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundImage: AssetImage(item.pic),
                radius: 75,
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
          ],
        ),
      );
}
