import '../widgets/bars/menubar.dart';
import '../widgets/bars/topbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    Map<String, CartItem> cartItems = cart.items;
    int _totalAmount = cart.totalAmount;
    return Scaffold(
      appBar: TopBar(),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, i) => Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/bragdarebbi.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(cartItems.values.toList()[i].title,
                            style: Theme.of(context).textTheme.headline4)
                      ]),
                      Row(
                        children: [
                          Text(cartItems.values.toList()[i].iceType.toString())
                        ],
                      ),
                      Row(
                        children: [
                          Text(cartItems.values.toList()[i].nammi.reduce(
                              (value, element) => value + ',' + element))
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(cartItems.values
                                  .toList()[i]
                                  .price
                                  .toString()),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                          ),
                          Column(
                            children: [
                              Text(cartItems.values
                                  .toList()[i]
                                  .quantity
                                  .toString())
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Icon(
                    Icons.delete,
                    color: Theme.of(context).accentColor,
                  ),
                  Icon(
                    Icons.add,
                    color: Theme.of(context).accentColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MenuBar(),
    );
  }
}
