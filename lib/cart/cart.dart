import 'package:flutter/material.dart';
import 'package:bharatkart/main.dart';
import 'package:bharatkart/cart/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("BharatKart")),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(title: Text("Total:"), subtitle: Text("\$230"))),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text("Check Out"),
              ),
            )
          ],
        ),
      ),
      body: Cprod(),
    );
  }
}
