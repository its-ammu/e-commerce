import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/Components/CategoriesHorizontalScroll.dart';
import 'package:e_commerce/Screens/Components/ProductGrid.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xffF5F3F5)),
        backgroundColor: Color(0xff1B264F),
        title: Text(
          "E-Commerce",
        ),
        actions: [

          IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Amutha varsni",
                style: TextStyle(color: Color(0xff1B264F)),
              ),
              accountEmail: Text(
                "ecommerceapp@gmail.com",
                style: TextStyle(color: Color(0xff001427)),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xff001427),
                child: Icon(
                  Icons.person_rounded,
                  color: Color(0xffAEB8D6),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffAEB8D6),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.home_filled,
                  color: Color(0xff001427),
                ),
                title: Text("Home"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.view_day_rounded,
                  color: Color(0xff001427),
                ),
                title: Text("Categories"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.shopping_bag_rounded,
                  color: Color(0xff001427),
                ),
                title: Text("Orders"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.bookmarks_rounded,
                  color: Color(0xff001427),
                ),
                title: Text("Saved"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Color(0xff001427),
                ),
                title: Text("Offers"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color(0xff001427),
                ),
                title: Text("Settings"),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.023,
          horizontal: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Column(
          children: [

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),


            CategoriesHorizontalScroll(),


            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              child: Text(
                "Products you may like ",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Flexible(child: ProductGrid()),

          ],

      ),
    ), );
  }
}
