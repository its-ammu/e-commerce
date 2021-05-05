import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final name;
  final image;
  final price;

  ProductDetails({this.name, this.image, this.price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  // final name;
  // final image;
  // final price;
  //
  // _ProductDetailsState(this.name, this.image, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffF5F3F5)),
        backgroundColor: Color(0xff1B264F),
        title: Text(widget.name),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.image),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Rs. " + "${widget.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.redAccent),
                ),
              ],
            ),
          ),

          // Size and Quantity
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the Size"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Text("Size")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the Quantity"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: Text("Quantity")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          // Buttons
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff1B264F),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Buy Now",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Icon(
                      Icons.add_shopping_cart_rounded,
                      color: Color(0xff1B264F),
                    )),
              ),
              GestureDetector(
                child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Icon(
                      Icons.bookmarks_rounded,
                      color: Color(0xff1B264F),
                    )),
              ),
            ],
          ),

          Divider(),

          ListTile(
            title: Container(
                margin: EdgeInsets.symmetric(
                    vertical: 5
                ),
                child: Text("Product Details",
                style: TextStyle(
                  fontSize: 16,
                ),)),
            subtitle: Container(
              margin: EdgeInsets.symmetric(
                vertical: 5
              ),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
          )
        ],
      ),
    );
  }
}
