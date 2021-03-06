import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniceflabs/CartProvider.dart';
import 'package:uniceflabs/cart.dart';
import 'package:uniceflabs/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        // You can add another provider over here.
      ],
      child: MaterialApp(
        title: 'Unicef Lab',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Home'),
      ),
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
  var userGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    final response =
                        await Provider.of<CartProvider>(context, listen: false)
                            .getUserData();
                    setState(() {
                      userGender = response;
                    });
                    print(userGender);
                  },
                  child: IconsContainer(
                    icon: Icons.keyboard_arrow_left,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                  child: Stack(
                    children: [
                      IconsContainer(
                        icon: Icons.local_grocery_store,
                      ),
                      Positioned(
                        left: 20,
                        child: Text(
                          '${Provider.of<CartProvider>(context).items.length}',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Unicef Labs Services',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 15),
            Description(
              desc: 'We sell all kinds of Africsn made products',
            ),
            SizedBox(height: 8),
            Description(
              desc: 'This shop provides both products and services',
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  'Products 41',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
                          name: 'First Headset',
                          imagesrc: 'assets/images/image2.png',
                          price: 900,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 180,
                        child: Image.asset('assets/images/image1.jpeg'),
                      ),
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
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 180,
                      child: Image.asset('assets/images/image1.jpeg'),
                    ),
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 180,
                      child: Image.asset('assets/images/image1.jpeg'),
                    ),
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
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 180,
                      child: Image.asset('assets/images/image1.jpeg'),
                    ),
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
  final Color color;
  const IconsContainer({Key key, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
          child: Icon(
        icon,
        color: color,
      )),
    );
  }
}
