import 'package:flutter/material.dart';
import 'package:bharatkart/proddesc/proddesc.dart';

class Cprod extends StatefulWidget {
  Cprod({Key key}) : super(key: key);

  @override
  _CprodState createState() => _CprodState();
}

class _CprodState extends State<Cprod> {
  int total = 0;
  var cartProdList = [
    {
      "name": "shirt",
      "pictures": "images/carousel/1.jpg",
      "price": 120,
      "mrp": 50,
      "discription":
          "BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elit",
      "size": "M",
      "qty": 1,
      "colour": "red"
    },
    {
      "name": "sweatshirt",
      "pictures": "images/carousel/1.jpg",
      "price": 130,
      "mrp": 50,
      "discription":
          "BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elit BLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elitBLorem ipsum dolor sit amet, consectetur adipiscing elit",
      "size": "M",
      "qty": 1,
      "colour": "red"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartProdList.length,
      itemBuilder: (context, index) => SingleCart(
        cartProdname: cartProdList[index]['name'],
        cartProdprice: cartProdList[index]['price'],
        cartProdsize: cartProdList[index]['size'],
        cartProdqty: cartProdList[index]['qty'],
        cartProdcolor: cartProdList[index]['colour'],
        cartProdpict: cartProdList[index]['pictures'],
        cartProddesc: cartProdList[index]['discription'],
        cartProdmrp: cartProdList[index]['mrp'],
      ),
    );
  }
}

class SingleCart extends StatelessWidget {
  final cartProdname;
  final cartProdprice;
  final cartProdsize;
  final cartProdqty;
  final cartProdcolor;
  final cartProddesc;
  final cartProdmrp;
  final cartProdpict;

  SingleCart({
    this.cartProddesc,
    this.cartProdmrp,
    this.cartProdname,
    this.cartProdprice,
    this.cartProdsize,
    this.cartProdqty,
    this.cartProdcolor,
    this.cartProdpict,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProdDesc(
                  productdescname: cartProdname,
                  productdescpict: cartProdpict,
                  productdescdisc: cartProddesc,
                  productdescprice: cartProdprice,
                  productdescmrp: cartProdmrp,
                )));
      },
      child: Card(
        child: ListTile(
          title: Text(cartProdname),
          subtitle: Text('\$$cartProdprice'),
          leading: Image.asset(cartProdpict),
          trailing: Text("QTY: $cartProdqty"),
        ),
      ),
    );
  }
}
