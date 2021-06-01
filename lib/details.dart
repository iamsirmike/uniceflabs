import 'package:flutter/material.dart';
import 'package:uniceflabs/main.dart';

class Details extends StatefulWidget {
  final String name;
  final String imagesrc;
  final int price;


  Details({this.name, this.imagesrc, this.price});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: IconsContainer(
                    icon: Icons.keyboard_arrow_left,
                  ),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 500,
                    child: Image.asset(widget.imagesrc),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Icons.local_grocery_store,
                  size: 30,
                  color: Color(0xFF003FFF),
                ),
                SizedBox(width: 8),
                Text(
                  'Shopping',
                  style: TextStyle(
                    color: Color(0xFF003FFF),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFFEBF0FF),
                  child: Icon(
                    Icons.local_grocery_store,
                    size: 20,
                    color: Color(0xFF003FFF),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Description(desc: 'This is the first product description'),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Description(
                desc: 'This is the second product description, aye!!'),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                IconsContainer(
                  icon: Icons.star,
                  color: Color(0xFF003FFF),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Description(desc: 'East Legon'),
                    Description(desc: '1700 - Madina'),
                  ],
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Divider(color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  '\$900',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                Text(
                  _itemcount.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
              color: Color(0xFF003FFF),
              height: 60,
              minWidth: 400,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text(
                'ADD TO CART',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
