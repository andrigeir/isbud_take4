import 'package:VSB/widgets/product_image_widget.dart';
import 'package:VSB/widgets/togglebutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final passedId = ModalRoute.of(context).settings.arguments;
    final loadedProduct = Provider.of<Products>(context).findById(passedId);
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Please choose size',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              MyToggleButton(),
              Center(
                child: Text(
                  'Please Choose type of Icecream',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              MyIceToggleButton(),
              Center(
                child: Text(
                  'Please choose 3x candy',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              NammiToggleButton(),
              Padding(
                padding: EdgeInsets.all(30),
              )
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
