import 'package:flutter/material.dart';
import 'package:bharatkart/main.dart';
import 'package:bharatkart/cart/cart.dart';

class ProdDesc extends StatefulWidget {
  final productdescname;
  final productdescprice;
  final productdescpict;
  final productdescdisc;
  final productdescmrp;

  ProdDesc(
      {this.productdescname,
      this.productdescprice,
      this.productdescmrp,
      this.productdescpict,
      this.productdescdisc});


  @override
  _ProdDescState createState() => _ProdDescState();
}

class _ProdDescState extends State<ProdDesc> {
  var size='size';
  var icon=Icons.radio_button_off;
  var like = Colors.black;
  int num = 2;
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
      body: ListView(children: [
        Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              height: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(widget.productdescpict),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                widget.productdescname,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: IconButton(
                onPressed: () {
                  setState(() {
                    like = Colors.red;
                  });
                },
                icon: Icon(
                  Icons.favorite_outline_rounded,
                  color: like,
                ),
              )),
              Expanded(
                  child: IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: () {},
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text("\$${widget.productdescprice}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("\$${widget.productdescmrp}",
                    style: TextStyle(decoration: TextDecoration.lineThrough)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(children: [
            Expanded(
              child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(size),
                            content: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text("M"),
                                    ),
                                    Expanded(
                                      child: IconButton(
                                        onPressed: () {
                                          
                                          setState((){icon=Icons.radio_button_on;});
                                          
                                        },
                                        icon: Icon(icon),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            actions: [
                              MaterialButton(
                                  onPressed: () {
                                    size='M';
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                          );
                        });
                  },
                  elevation: 0.7,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(children: [
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down_outlined),
                    )
                  ])),
            ),
            Expanded(
              child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Colour"),
                            content: Column(),
                            actions: [
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                          );
                        });
                  },
                  elevation: 0.7,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(children: [
                    Expanded(
                      child: Text("Colours"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down_outlined),
                    )
                  ])),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    elevation: 0.7,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Buy Now")),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                icon: Icon(Icons.add_shopping_cart),
              )
            ],
          ),
        ),
        ListTile(
          title: Text("Product Details"),
          subtitle: Text(widget.productdescdisc),
        )
      ]),
    );
  }
}
