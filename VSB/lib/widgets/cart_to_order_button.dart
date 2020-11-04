import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';
import '../providers/orders.dart';

class CartToOrderButton extends StatefulWidget {
  @override
  _CartToOrderBottonState createState() => _CartToOrderBottonState();
}

class _CartToOrderBottonState extends State<CartToOrderButton> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50.0,
          child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Expanded(
              child: Center(
                child: cart.totalAmount != null
                    ? Text(
                        'Total: ${cart.totalAmount} kr.',
                        style: Theme.of(context).textTheme.button,
                      )
                    : Text('Total : 0 kr.',
                        style: Theme.of(context).textTheme.button),
              ),
            ),
            Center(
                child:
                    Text('Panta', style: Theme.of(context).textTheme.button)),
            IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: null)
          ]),
          decoration: BoxDecoration(
              border: new Border.all(width: 1, color: Colors.transparent),
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
      onTap: () {
        Provider.of<Orders>(
          context,
          listen: false,
        ).addOrder(
          cart.items.values.toList(),
          cart.totalAmount,
        );
        cart.clearCart();
        print(cart.items.toString());
      },
    );
  }
}
