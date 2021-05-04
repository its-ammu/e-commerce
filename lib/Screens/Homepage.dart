import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        iconTheme: IconThemeData(color: Color(0xff001427)),
        backgroundColor: Color(0xffB0BFB8),
        title: Text(
          "E-Commerce",
          style: TextStyle(color: Color(0xff001427)),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_rounded,
              ),
              onPressed: () {}),
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
                style: TextStyle(color: Color(0xff001427)),
              ),
              accountEmail: Text(
                "ecommerceapp@gmail.com",
                style: TextStyle(color: Color(0xff001427)),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xff001427),
                child: Icon(
                  Icons.person_rounded,
                  color: Color(0xffB0BFB8),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffB0BFB8),
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
        child: ListView(

        ),
      ),
    );
  }
}
