import 'package:flutter/material.dart';
import 'package:bharatkart/proddesc/proddesc.dart';

class RecentProd extends StatefulWidget {
  @override
  _RecentProdState createState() => _RecentProdState();
}

class _RecentProdState extends State<RecentProd> {
  var productlist = [
    {
      "name": "T-shirt",
      "pictures": "images/products/prod1.png",
      "price": 120,
      "mrp": 50,
      "discription":
          "SBLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elit"
    },
   {
      "name": "Shirt",
      "pictures": "images/products/prod2.png",
      "price": 100,
      "mrp": 50,
      "discription":
          "BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elit"
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productlist.length,
        scrollDirection: Axis.horizontal,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return SingleProd(
            prodname: productlist[index]['name'],
            prodpict: productlist[index]['pictures'],
            prodprice: productlist[index]['price'],
            proddisc: productlist[index]['discription'],
            prodmrp: productlist[index]['mrp'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prodname;
  final prodpict;
  final prodprice;
  final proddisc;
  final prodmrp;

  SingleProd({
    this.prodname,
    this.prodpict,
    this.prodprice,
    this.proddisc,
    this.prodmrp,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: prodname,
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProdDesc(
                      productdescname: prodname,
                      productdescpict: prodpict,
                      productdescdisc: proddisc,
                      productdescprice: prodprice,
                      productdescmrp: prodmrp,
                    )));
          },
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(prodname,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                title: Text(
                  "\$$prodprice",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            child: Image.asset(
              prodpict,
              height: 40,
            ),
          ),
        ),
      ),
    ));
  }
}
