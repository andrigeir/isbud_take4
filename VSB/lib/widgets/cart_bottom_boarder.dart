import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';
import '../providers/product.dart';
import '../providers/bragdarefur.dart';

class CartBottomBorder extends StatefulWidget {
  Product loadedProduct;
  CartBottomBorder({Key key, @required this.loadedProduct}) : super(key: key);

  @override
  _CartBottomBorderState createState() => _CartBottomBorderState();
}

class _CartBottomBorderState extends State<CartBottomBorder> {
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    //int _quantity = 1;
    final _iceType = Provider.of<Bragdarefur>(context).getIceType;
    final _price = Provider.of<Bragdarefur>(context).getPrice;
    final _nammi = Provider.of<Bragdarefur>(context, listen: false).getNammi;
    final _size = Provider.of<Bragdarefur>(context).getSize;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50.0,
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                setState(() {
                  _quantity++;
                });
              }),
          Text('$_quantity x', style: Theme.of(context).textTheme.button),
          IconButton(
              icon: Icon(Icons.remove, color: Theme.of(context).primaryColor),
              onPressed: () {
                setState(() {
                  if (_quantity > 1) {
                    _quantity--;
                  }
                });
              }),
          Expanded(
            child: Text('${widget.loadedProduct.title}',
                style: Theme.of(context).textTheme.button),
          ),
          _price != null
              ? Text(
                  '$_price kr.',
                  style: Theme.of(context).textTheme.button,
                )
              : Text('0 kr.', style: Theme.of(context).textTheme.button),
          IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                cart.addItem(
                    widget.loadedProduct.id,
                    widget.loadedProduct.title,
                    _iceType,
                    _size,
                    _quantity,
                    _price,
                    new List.from(_nammi));
              })
        ]),
        decoration: BoxDecoration(
            border: new Border.all(width: 1, color: Colors.transparent),
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
