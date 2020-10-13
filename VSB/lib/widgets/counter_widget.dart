import 'package:VSB/providers/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  void _setSize(BuildContext context, index) {
    Provider.of<Counter>(context, listen: false).setSize(index);
  }

  @override
  Widget build(BuildContext context) {
    IceSize _size = Provider.of<Counter>(context).getSize;
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
              '$_size',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () => _setSize(context, 3),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
