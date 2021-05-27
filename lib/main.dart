import 'package:flutter/material.dart';
import 'package:uniceflabs/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unicef Lab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              IconsContainer(
                icon: Icons.keyboard_arrow_left,
              ),
              Spacer(),
              IconsContainer(
                icon: Icons.search,
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Unicef Labs Services',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 8),
          Description(
            desc: 'We sell all kinds of Africsn made products',
          ),
          Description(
            desc: 'This shop provides both products and services',
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                'Products 41',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  print('You tapped on this text');
                },
                child: Text(
                  'Show all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        name: 'First product',
                        imagesrc: 'assets/images/image.mp3',
                        price: 900,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Image.asset('assets/images/image.mp3'),
                    Text(
                      'First Headset',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      '\$900',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset('assets/images/image.mp3'),
                  Text(
                    'Second Headset',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '\$830',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Accessories 487',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  print('You tapped on this text');
                },
                child: Text(
                  'Show all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/image.mp3'),
                  Text(
                    'Accessories 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '. Available',
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    '\$900',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Column(
                children: [
                  Image.asset('assets/images/image.mp3'),
                  Text(
                    'Second Headset',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '. Unavailable',
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    '\$830',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Description extends StatelessWidget {
  final String desc;
  const Description({
    Key key,
    this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: TextStyle(
        fontSize: 18,
        color: Colors.grey,
      ),
    );
  }
}

class IconsContainer extends StatelessWidget {
  final IconData icon;
  const IconsContainer({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      child: Icon(icon),
    );
  }
}
