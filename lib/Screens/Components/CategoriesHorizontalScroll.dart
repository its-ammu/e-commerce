import 'package:flutter/material.dart';

class CategoriesHorizontalScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              url :"assets/shirt.png",
          ),
          Category(
            url :"assets/tshirt.png",
          ),
          Category(
            url :"assets/dress.png",
          ),
          Category(
            url :"assets/bags.png",
          ),
          Category(
            url :"assets/shoe.png",
          ),
          Category(
            url :"assets/sunglasses.png",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  final url;

 Category({this.url}) ;

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
    padding: EdgeInsets.all(15),

    decoration: BoxDecoration(
    color: Color(0xffAEB8D6),
    borderRadius: BorderRadius.circular(20)
    ),
      child: Image.asset(url,
        height:  MediaQuery.of(context).size.width * 0.2,),
    );
  }
}
