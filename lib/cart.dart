import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniceflabs/CartProvider.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<CartProvider>(
              builder: (context, cart, child) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            cart.items[index].itemName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'GHS ${cart.items[index].price}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              cart.removeCartItem(index);
                              final snackBar = SnackBar(
                                content: Text('Item was deleted successfully'),
                                backgroundColor: Colors.red,
                              );

                              _scaffoldKey.currentState.showSnackBar(snackBar);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: [
                Text(
                  'Total ${Provider.of<CartProvider>(context).items.length}',
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Text(
                    'GHS ${Provider.of<CartProvider>(context).calculatTotalPrice()}',
                    style: TextStyle(fontSize: 20)),
              ]),
            ),
            SizedBox(height: 200),
            Provider.of<CartProvider>(context).items.length == 0
                ? SizedBox()
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FlatButton(
                      color: Color(0xFF003FFF),
                      height: 60,
                      minWidth: 400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child: Text(
                        'CHECKOUT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
