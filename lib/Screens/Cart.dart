import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/Components/CartProductList.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffF5F3F5)),
        backgroundColor: Color(0xff1B264F),
        title: Text("Cart"),
      ),

      body: CartProductList(),

      bottomNavigationBar: Container(
        child: Row(
          children: [
            Expanded(child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26)
              ),
              child: ListTile(
                title: Text("Total"),
                subtitle: Container(
                  margin: EdgeInsets.only(
                    top: 5
                  ),
                    child: Text("Rs 230",
                      style: TextStyle(
                        fontSize: 18,
                      ),)),
              ),
            )),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Color(0xffAEB8D6),

              ),
              padding: EdgeInsets.symmetric(
                vertical: 13,
                horizontal: 10,
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                    "Check Out",
                style: TextStyle(
                  fontSize: 18,
                ),),
              ),
            )),


          ],
        ),
      ),
    );
  }
}
