import 'package:VSB/widgets/bars/menubar.dart';
import 'package:VSB/widgets/bars/topbar.dart';
import 'package:flutter/material.dart';
import '../widgets/bars/topbar.dart';
import '../widgets/bars/menubar.dart';

import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Row(
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
                          Text('Storm - S',
                              style: Theme.of(context).textTheme.headline4)
                        ]),
                        Row(
                          children: [Text('Gamli')],
                        ),
                        Row(
                          children: [Text('Jarðaber, Oreo, Mars')],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('1300 kr'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                            ),
                            Column(
                              children: [Text('2 stk')],
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
          ],
        ),
      ),
      bottomNavigationBar: MenuBar(),
    );
  }
}
