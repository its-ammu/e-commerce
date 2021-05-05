import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/ProductDetails.dart';

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  var productList = [
    {
      "name": "Maroon simple Shirt",
      "image": "assets/products/shirt1.jpg",
      "price": 600,
    },
    {
      "name": "White and blue T-Shirt",
      "image": "assets/products/tshirt1.jpg",
      "price": 400,
    },
    {
      "name": "Formal Blazer",
      "image": "assets/products/coat1.jpg",
      "price": 900,
    },
    {
      "name": "Black and white patterned",
      "image": "assets/products/dress1.jpg",
      "price": 900,
    },
    {
      "name": "Black and red combo",
      "image": "assets/products/dress2.jpg",
      "price": 700,
    },
    {"name": "Shoes", "image": "assets/products/shoe1.jpg", "price": 900},
    {"name": "Coolers", "image": "assets/products/sunglass1.jpg", "price": 900},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductWidget(
          name: productList[index]["name"],
          image: productList[index]["image"],
          price: productList[index]["price"],
        );
      },
    );
  }
}

class ProductWidget extends StatelessWidget {
  final name;
  final image;
  final price;

  ProductWidget({this.name, this.image, this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProductDetails(name: name, image: image, price: price,)),
        );
      },
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: const Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: MediaQuery.of(context).size.height * 0.13,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  softWrap: true,
                  style: TextStyle(fontSize: 17, color: Color(0xff001427)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Rs " + "$price",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.redAccent),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Icon(
                          Icons.bookmarks_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Icon(
                          Icons.add_shopping_cart_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
