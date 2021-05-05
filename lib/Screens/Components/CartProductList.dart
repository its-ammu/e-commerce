import 'package:flutter/material.dart';

class CartProductList extends StatefulWidget {
  @override
  _CartProductListState createState() => _CartProductListState();
}

class _CartProductListState extends State<CartProductList> {
  var CartProducts = [
    {
      "name": "Maroon simple Shirt",
      "image": "assets/products/shirt1.jpg",
      "price": 600,
      "size": "S",
      "color": "Red",
      "quantity": 2,
    },
    {
      "name": "White and blue T-Shirt",
      "image": "assets/products/tshirt1.jpg",
      "price": 400,
      "size": "M",
      "color": "Purple",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CartProducts.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            name: CartProducts[index]["name"],
            image: CartProducts[index]["image"],
            price: CartProducts[index]["price"],
            size: CartProducts[index]["size"],
            color: CartProducts[index]["color"],
            quantity: CartProducts[index]["quantity"],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final name;
  final image;
  final price;
  final size;
  final color;
  final quantity;

  const SingleCartProduct(
      {Key key,
      this.name,
      this.image,
      this.price,
      this.size,
      this.color,
      this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(image),
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text(name),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text("Size : "+size),
                ),
                Expanded(
                  child: Text("Color : "+color),
                ),
                Expanded(
                  child: Text("Quantity : "+"$quantity"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Price : Rs "+"${price * quantity}",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.redAccent),),
            SizedBox(
              height: 10,
            ),
          ],
        ),



      ),
    );
  }
}
