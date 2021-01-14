import 'package:bharatkart/home/horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:bharatkart/cart/cart.dart';
import 'package:bharatkart/home/topprod.dart';
import 'package:bharatkart/home/recentprod.dart';
import 'package:bharatkart/signin/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200,
      width: double.infinity,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/1.jpg',),
          AssetImage('images/carousel/2.jpg'),
          AssetImage('images/carousel/3.jpg'),
        ],
        dotSize: 3.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 3.0,
      ),
    );
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              accountName: Text("Ashutosh Choudhary"),
              accountEmail: Text("abc@xyz"),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("All Categories"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text("Indian"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text("Offer Zone"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: Text("Signup"),
              onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>SignIn()));},
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
              ),
              title: Text("My Cart"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("My Orders"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text("My Wishlist"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text("Help Center"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.1,
        title: Text("BHARATKART"),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      body: new ListView(children: [
        imageCarousel,
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text("Categories"),
        ),
        HorizontalList(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text("Recent Products"),
        ),
        Container(
          color: Colors.blue[50],
          height: 200,
          child: RecentProd(),
        ),
        Padding(
          
          padding: const EdgeInsets.all(12),
          child: Text("Top Products"),
        ),
        Container(
          color: Colors.blue[50],
          height: 200,
          child: TopProd(),
        ),
        
      ]),
    );
  }
}
