import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      height: 70,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Category(
          imgcap: 'Indian',
        ),
        Category(
          imgcap: 'Men',
        ),
        Category(
          imgcap: 'Women',
        ),
        Category(
          imgcap: 'Mobile',
        ),
        Category(
          imgcap: 'Home',
        ),
        
      ]),
    );
  }
}

class Category extends StatelessWidget {
  final String imgloc;
  final String imgcap;

  Category({this.imgloc, this.imgcap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 80,
        height: 100,
        child: ListTile(
          onTap: () {},
          title: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              )),
          subtitle: Container(alignment: Alignment.topCenter,child: Text(imgcap)),
        ),
      ),
    );
  }
}
