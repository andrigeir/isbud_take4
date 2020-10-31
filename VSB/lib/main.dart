import 'package:VSB/providers/bragdarefur.dart';

import './theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/bragdarefur_screen.dart';
import './screens/product_overview.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Bragdarefur()),
        ChangeNotifierProvider.value(value: Cart()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: appTheme(),
          home: ProductOverviewScreen(),
          //home: CartScreen(),
          routes: {
            BragdarefurScreen.routeName: (ctx) => BragdarefurScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            ProductOverviewScreen.routeName: (ctx) => ProductOverviewScreen(),
          }),
    );
  }
}
