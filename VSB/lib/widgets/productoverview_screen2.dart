import 'package:flutter/material.dart';

class ProductOverviewScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          children: [
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          color: Colors.red,
                          child:
                              Image.asset('assets/images/Icecream_logo.png')),
                    )
                  ]),
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child:
                          Container(color: Colors.blue, child: Text('sælir')),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Text('Sælir'),
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Text('Sælir'),
                      ),
                    )
                  ]),
            ),
          ],
        ));
  }
}
