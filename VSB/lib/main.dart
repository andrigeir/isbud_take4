import './theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './theme/appTheme.dart';
import './screens/bragdarefur_screen.dart';
import 'screens/product_overview.dart';
import './providers/products.dart';

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
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: appTheme(),
          home: ProductOverviewScreen(),
          //home: BragdarefurScreen(),
          routes: {
            BragdarefurScreen.routeName: (ctx) => BragdarefurScreen(),
          }),
    );
  }
}
