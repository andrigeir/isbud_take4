import 'package:VSB/providers/bragdarefur.dart';
import 'package:VSB/providers/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  void _setPrice(BuildContext context, key, nammi) {
    Provider.of<Bragdarefur>(context, listen: true).setPrice(key, nammi);
  }

  @override
  Widget build(BuildContext context) {
    double _price = Provider.of<Bragdarefur>(context).getPrice;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'You have pushed the button this many times:',
            ),
          ),
          Center(
            child: Text(
              _price.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ],
      ),
    );
  }
}
