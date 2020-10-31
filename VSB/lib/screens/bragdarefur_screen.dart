import 'package:VSB/providers/bragdarefur.dart';

import 'package:VSB/widgets/product_image_widget.dart';
import 'package:VSB/widgets/togglebutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:VSB/providers/cart.dart';

import '../widgets/bars/topbar.dart';
import '../widgets/bars/back_appbar.dart';
import '../providers/products.dart';
import '../widgets/icetype_togglebutton.dart';
import '../widgets/nammi_togglebuttons.dart';
import '../widgets/cart_bottom_boarder.dart';

class BragdarefurScreen extends StatelessWidget {
  static const routeName = '/bragdarefur';

  @override
  Widget build(BuildContext context) {
    //final bragdarefur = Provider.of<Bragdarefur>(context);
    final _size = Provider.of<Bragdarefur>(context).getSize;
    final passedId = ModalRoute.of(context).settings.arguments;
    final loadedProduct = Provider.of<Products>(context).findById(passedId);
    final _iceType = Provider.of<Bragdarefur>(context).getIceType;
    final _price = Provider.of<Bragdarefur>(context).getPrice;
    final _nammi = Provider.of<Bragdarefur>(context).getNammi;
    final cart = Provider.of<Cart>(context);
    final int _quantity = 1;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: TopBar(),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              BackAppBar(loadedProduct.title),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              ProductImage(loadedProduct.imageUrl),
              Center(
                child: Text('Please choose size'),
              ),
              MyToggleButton(),
              Center(
                child: Text('Please Choose type of Icecream'),
              ),
              MyIceToggleButton(),
              Center(
                child: Text(
                  '$_size, $_iceType $_price',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Center(
                child: Text('Please Choose 3x candy, $_nammi'),
              ),
              NammiToggleButton(),
            ],
          ),
        ),
        CartBottomBorder(
          loadedProduct: loadedProduct,
        ),
      ]),
    );
  }
}
