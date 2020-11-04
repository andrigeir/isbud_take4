import './providers/bragdarefur.dart';
import './screens/user_profile_screen.dart';

import './theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/bragdarefur_screen.dart';
import './screens/product_overview.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './screens/cart_screen.dart';
import './screens/orders_screen.dart';

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
        ChangeNotifierProvider.value(value: Orders()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: appTheme(),
          home: ProductOverviewScreen(),
          routes: {
            BragdarefurScreen.routeName: (ctx) => BragdarefurScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            ProductOverviewScreen.routeName: (ctx) => ProductOverviewScreen(),
            UserProfile.routeName: (ctx) => UserProfile(),
            OrderScreen.routeName: (ctx) => OrderScreen(),
          }),
    );
  }
}
