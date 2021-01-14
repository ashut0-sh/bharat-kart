import 'package:flutter/material.dart';
import 'package:bharatkart/proddesc/proddesc.dart';

class TopProd extends StatefulWidget {
  @override
  _TopProdState createState() => _TopProdState();
}

class _TopProdState extends State<TopProd> {
  var productlist = [
    {
      "name": "Shirt",
      "pictures": "images/products/prod2.png",
      "price": 100,
      "mrp": 50,
      "discription":
          "BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elit"
    },
    {
      "name": "T-shirt",
      "pictures": "images/products/prod1.png",
      "price": 120,
      "mrp": 50,
      "discription":
          "SBLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elit"
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
          return SingleTopProd(
            prodtname: productlist[index]['name'],
            prodtpict: productlist[index]['pictures'],
            prodtprice: productlist[index]['price'],
            prodtdisc: productlist[index]['discription'],
            prodtmrp: productlist[index]['mrp'],
          );
        });
  }
}

class SingleTopProd extends StatelessWidget {
  final prodtname;
  final prodtpict;
  final prodtprice;
  final prodtdisc;
  final prodtmrp;

  SingleTopProd({
    this.prodtname,
    this.prodtpict,
    this.prodtprice,
    this.prodtdisc,
    this.prodtmrp,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: Text("hero"),
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProdDesc(
                      productdescname: prodtname,
                      productdescpict: prodtpict,
                      productdescdisc: prodtdisc,
                      productdescprice: prodtprice,
                      productdescmrp: prodtmrp,
                    )));
          },
          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: ListTile(
                leading: Text(prodtname,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                title: Text(
                  "\$$prodtprice",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            child: Image.asset(
              prodtpict,
              height: 50,
              
            ),
          ),
        ),
      ),
    ));
  }
}
